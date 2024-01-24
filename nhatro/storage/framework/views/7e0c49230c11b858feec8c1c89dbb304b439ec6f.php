<?php $__env->startSection('css'); ?>
    <link href="<?php echo e(url('public/frontend')); ?>/style.css" rel="stylesheet">
    <style>
        .line-clamp-2 {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            overflow: hidden;
            -webkit-line-clamp: 2;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('layouts.nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php if($errors->any()): ?>
        <div class="alert alert-danger">
            <ul>
                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li><?php echo e($error); ?></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
        </div>
    <?php endif; ?>
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-8" style="border-radius:8px;border: 3px solid #868686">
                    <?php if(isset($baivietvip)): ?>
                        <?php $__currentLoopData = $baivietvip; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <h5>Bài vip</h5>
                            <a class="text-reset text-decoration-none"
                                href="<?php echo e(route('xemchitiet', ['id' => $item->id, 'slug' => Str::slug($item->tieu_de)])); ?>">
                                <?php
                                    $imageNames = explode(',', $item->anh_gioi_thieu);
                                    $imageCount = count($imageNames);
                                ?>
                                <?php if($imageCount == 1): ?>
                                    <div class="image-container">

                                        <img class="img-one" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                    </div>
                                <?php elseif($imageCount == 2): ?>
                                    <div class="image-container">
                                        <div class="row">
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                            </div>
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[1]); ?>">
                                            </div>
                                        </div>
                                    </div>
                                <?php elseif($imageCount == 3): ?>
                                    <div class="image-container">

                                        <div class="row">
                                            <div class="col-8 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                            </div>
                                            <div class="col-4 padding_0px">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[1]); ?>">
                                                    </div>
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[2]); ?>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-body">
                                        <p class="card-text line-clamp-2"><?php echo e($item->tieu_de); ?></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">Đánh giá chủ nhà:</span>
                                                <span>
                                                    <?php if($item->rate == 1): ?>
                                                        <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                                                    <?php elseif($item->rate == 2): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                                                    <?php elseif($item->rate == 3): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                                                    <?php elseif($item->rate == 4): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                                                    <?php elseif($item->rate == 5): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★★★</label>
                                                    <?php else: ?>
                                                        <label>Chưa có đánh giá</label>
                                                    <?php endif; ?>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold"><?php echo e($item->hoTen); ?></span>
                                                <span style="color: blue"> || </span>
                                                <span style="font-weight: bold">Số điện thoại: <?php echo e($item->sdt); ?></span>
                                            </div>
                                            <small class="text-muted"><?php echo e($item->updated_at); ?></small>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>


                    <?php if(isset($baiviet)): ?>
                        <?php $__currentLoopData = $baiviet; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($item->user_id == Auth::id()): ?>
                                <a href="<?php echo e(route('baiviet.dkVip', ['id' => $item->id])); ?>" class="btn btn-danger">Đăng kí bài
                                    vip</a>
                            <?php endif; ?>

                            <a class="text-reset text-decoration-none"
                                href="<?php echo e(route('xemchitiet', ['id' => $item->id, 'slug' => Str::slug($item->tieu_de)])); ?>">
                                <?php
                                    $imageNames = explode(',', $item->anh_gioi_thieu);
                                    $imageCount = count($imageNames);
                                ?>
                                <?php if($imageCount == 1): ?>
                                    <div class="image-container">

                                        <img class="img-one" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                    </div>
                                <?php elseif($imageCount == 2): ?>
                                    <div class="image-container">
                                        <div class="row">
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                            </div>
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[1]); ?>">
                                            </div>
                                        </div>
                                    </div>
                                <?php elseif($imageCount == 3): ?>
                                    <div class="image-container">

                                        <div class="row">
                                            <div class="col-8 padding_0px">
                                                <img class="img-two" src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[0]); ?>">
                                            </div>
                                            <div class="col-4 padding_0px">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[1]); ?>">
                                                    </div>
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="<?php echo e(url('public/images')); ?>/<?php echo e($imageNames[2]); ?>">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-body">
                                        <p class="card-text line-clamp-2"><?php echo e($item->tieu_de); ?></p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">Đánh giá chủ nhà:</span>
                                                <span>
                                                    <?php if($item->rate == 1): ?>
                                                        <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                                                    <?php elseif($item->rate == 2): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                                                    <?php elseif($item->rate == 3): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                                                    <?php elseif($item->rate == 4): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                                                    <?php elseif($item->rate == 5): ?>
                                                        <label style="color: rgb(255, 183, 0)">★★★★★</label>
                                                    <?php else: ?>
                                                        <label>Chưa có đánh giá</label>
                                                    <?php endif; ?>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold"><?php echo e($item->hoTen); ?></span>
                                                <span style="color: blue"> || </span>
                                                <span style="font-weight: bold">Số điện thoại: <?php echo e($item->sdt); ?></span>
                                            </div>
                                            <small class="text-muted"><?php echo e($item->updated_at); ?></small>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
                <div class="col-md-3 ml-3" style="border-radius:8px;border: 3px solid #868686; padding-left: 15px;">
                    <h5>TOP CHỦ NHÀ ĐƯỢC ĐÁNH GIÁ CAO NHẤT</h5>
                    <?php $__currentLoopData = $partner; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <span>
                            <label for=""><?php echo e($item->hoTen); ?>: </label>
                            <?php if($item->rate == 1): ?>
                                <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                            <?php elseif($item->rate == 2): ?>
                                <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                            <?php elseif($item->rate == 3): ?>
                                <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                            <?php elseif($item->rate == 4): ?>
                                <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                            <?php elseif($item->rate == 5): ?>
                                <label style="color: rgb(255, 183, 0)">★★★★★</label>
                            <?php else: ?>
                                <label style="font-weight:bold">Chưa có đánh giá</label>
                            <?php endif; ?>
                        </span>
                        <br>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>

            <div class="pagi">
                <?php echo e($baiviet->links()); ?>

            </div>
        </div>

        <?php echo $__env->make('layouts.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/home.blade.php ENDPATH**/ ?>