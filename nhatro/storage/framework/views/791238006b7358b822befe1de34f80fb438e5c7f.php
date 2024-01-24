
<?php $__env->startSection('css'); ?>
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <link href="<?php echo e(url('public/frontend')); ?>/style.css" rel="stylesheet">

    <style>
        .rating {
            display: flex;
            flex-direction: row-reverse;
            justify-content: flex-end;
        }

        .rating>input {
            display: none;
        }

        .rating>label {
            position: relative;
            width: 1em;
            font-size: 1vw;
            color: #FFD600;
            cursor: pointer;
        }

        .rating>label::before {
            content: "\2605";
            position: absolute;
            opacity: 0;
        }

        .rating>label:hover:before,
        .rating>label:hover~label:before {
            opacity: 1 !important;
        }

        .rating>input:checked~label:before {
            opacity: 1;
        }

        .rating:hover>input:checked~label:before {
            opacity: 0.4;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('layouts.nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <hr>

    <div class="container">
        <h3>Giá tiền: <?php echo e($baiviet[0]->gia_tien); ?> || Diện tích: <?php echo e($baiviet[0]->dien_tich); ?> mét vuông || Loại:
            <?php if($baiviet[0]->type == 0): ?>
                Nhà trọ
            <?php elseif($baiviet[0]->type == 1): ?>
                Chung cư mini
            <?php elseif($baiviet[0]->type == 2): ?>
                Nhà riêng
            <?php endif; ?>
        </h3>
        <h3>Địa chỉ: <?php echo e($baiviet[0]->tinhtp); ?>, <?php echo e($baiviet[0]->quanhuyen); ?>, <?php echo e($baiviet[0]->phuongxa); ?> </h3>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <?php
                    $imageNames = explode(',', $baiviet[0]->anh_gioi_thieu);
                ?>
                <?php $__currentLoopData = $imageNames; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="carousel-item <?php echo e($index === 0 ? 'active' : ''); ?>">
                        <img src="<?php echo e(url('public/images')); ?>/<?php echo e($item); ?>" class="d-block w-100 img-one"
                            style="max-height: 400px;" alt="...">
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
        </div>
        <br>

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?php echo e(route('home')); ?>" class="text-reset text-decoration-none">Trang
                        chủ</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"><?php echo e($baiviet[0]->tieu_de); ?></li>
            </ol>
        </nav>

        <hr>
        <h6>Đánh giá chủ nhà</h6>
        <div class="rating">
            <input type="radio" name="rating" value="5" id="star5"
                <?php echo e($baiviet[0]->rate == 5 ? 'checked' : ''); ?>><label for="star5">☆</label>
            <input type="radio" name="rating" value="4" id="star4"
                <?php echo e($baiviet[0]->rate == 4 ? 'checked' : ''); ?>><label for="star4">☆</label>
            <input type="radio" name="rating" value="3" id="star3"
                <?php echo e($baiviet[0]->rate == 3 ? 'checked' : ''); ?>><label for="star3">☆</label>
            <input type="radio" name="rating" value="2" id="star2"
                <?php echo e($baiviet[0]->rate == 2 ? 'checked' : ''); ?>><label for="star2">☆</label>
            <input type="radio" name="rating" value="1" id="star1"
                <?php echo e($baiviet[0]->rate == 1 ? 'checked' : ''); ?>><label for="star1">☆</label>
        </div>
        <hr>

        <h5><?php echo e($baiviet[0]->tieu_de); ?></h5>
        <?php echo $baiviet[0]->noi_dung; ?>

    </div>

    <hr>
    <div class="container">
        <h4>Bình luận</h4>
        <?php if(Auth::check()): ?>
            

            <form action="<?php echo e(route('comment.store', $baiviet[0]->id)); ?>" method="POST">
                <?php echo csrf_field(); ?>
                <div class="form-group">
                    <label for="">Nội dung bình luận</label>
                    <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>" class="form-control"
                        aria-describedby="helpId">
                    <textarea name="noi_dung" class="form-control" placeholder="Nhập nội dung (*)"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Đăng bình luận</button>
            </form>
        <?php else: ?>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modelId">Đăng nhập để bình
                luận</button>
        <?php endif; ?>
        <br>
        <div id="comment">
            <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="media">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png"
                        class="mr-3" width="40">
                    <div class="media-body">
                        <h5 class="mt-0"><?php echo e($item->name); ?></h5>
                        <p><?php echo e($item->noi_dung); ?></p>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
    <?php echo $__env->make('layouts.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('js'); ?>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            // Gắn sự kiện click vào các label của div .rating
            $(".rating label").on("click", function() {
                var rating = $(this).prev().val();
                var user_id_2 = <?php echo e($baiviet[0]->user_id); ?>;
                var isLoggedIn = <?php echo e(auth()->check() ? 'true' : 'false'); ?>;
                if (isLoggedIn) {
                    // Kiểm tra biến rating có phải là undefined hay không
                    if (typeof rating !== 'undefined') {
                        // Nếu không phải undefined, thực hiện gửi đánh giá bằng Ajax
                        submitRating(rating, user_id_2);
                        // dd(user_id_2);
                    } else {
                        // Nếu là undefined, bạn có thể thực hiện một hành động khác tùy ý hoặc không làm gì cả
                        console.log('Rating không tồn tại');
                    }
                } else {
                    alert("Bạn cần đăng nhập khi sử dụng chức năng này!");
                    location.reload();
                }
            });
        });

        function submitRating(rating, user_id_2) {
            $.ajax({
                type: "POST",
                url: "<?php echo e(route('partner.rate')); ?>",
                data: JSON.stringify({
                    rating: rating,
                    user_id_2: user_id_2
                }),
                contentType: "application/json",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(response) {
                    console.log(response);
                    // Xử lý kết quả thành công (nếu cần)
                    alert("Đánh giá đã được gửi thành công!");
                    location.reload();
                },
                error: function(xhr, status, error) {
                    // Xử lý lỗi (nếu cần)
                    alert("Đã xảy ra lỗi khi gửi đánh giá!");
                    location.reload();
                }
            });
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/client/baiviet_detail.blade.php ENDPATH**/ ?>