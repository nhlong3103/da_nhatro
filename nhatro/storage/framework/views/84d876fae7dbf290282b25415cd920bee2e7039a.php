
<?php $__env->startSection('css'); ?>
    <!-- summernote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    
    <hr>
    <div class="container responsive">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Thêm bài đăng</div>

                    <?php if($errors->any()): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><?php echo e($error); ?></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    <?php endif; ?>

                    <div class="card-body">
                        <?php if(session('status')): ?>
                            <div class="alert alert-danger" role="alert">
                                <?php echo e(session('status')); ?>

                            </div>
                        <?php endif; ?>

                        <form method="POST" action="<?php echo e(route('baiviet.postUpdate', $baiviet->id)); ?>"
                            enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="">Tiêu đề</label>
                                <input type="text" name="tieu_de" id="" value="<?php echo e($baiviet->tieu_de); ?>"
                                    class="form-control" placeholder="Nhập tiêu đề" aria-describedby="helpId">
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-3">
                                        <label for="">Diện tích</label>
                                        <input type="number" name="dien_tich" id=""
                                            value="<?php echo e($baiviet->dien_tich); ?>" class="form-control"
                                            placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-3">
                                        <label for="">Giá tiền</label>
                                        <input type="number" name="gia_tien" id=""
                                            value="<?php echo e($baiviet->gia_tien); ?>" class="form-control"
                                            placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh giới thiệu</label>
                                <input type="file" name="anh_gioi_thieu[]" id="" class="form-control-file"
                                    id="anh_gioi_thieu" multiple>
                            </div>

                            <?php $__currentLoopData = explode(',', $baiviet->anh_gioi_thieu); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $imageName): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <img src="<?php echo e(url('public/images')); ?>/<?php echo e(trim($imageName)); ?>" width="100" height="120">
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            <br><br>


                            <div class="form-group">
                                <label for="">Nội dung</label>
                                <textarea name="noi_dung" id="summernote" cols="100" rows="30"><?php echo $baiviet->noi_dung; ?></textarea>
                            </div>

                            <div class="form-group">
                                <label for="">Loại</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="type" id="" value="0"
                                            <?php echo e($baiviet->type == 0 ? 'checked' : ''); ?>>
                                        <span>Nhà trọ</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="1"
                                            <?php echo e($baiviet->type == 1 ? 'checked' : ''); ?>>
                                        <span>CCMN</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="2"
                                            <?php echo e($baiviet->type == 2 ? 'checked' : ''); ?>>
                                        <span>Nhà nguyên căn</span>
                                    </label>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Đăng tin</button>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
    <!-- include summernote css/js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

    <script>
        $('#summernote').summernote({
            placeholder: 'Nhập nội dung vào đây',
            tabsize: 2,
            height: 500
        });
        // var content = $('#summernote').data('content');
        // $('#summernote').summernote('code', content);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/admin/baiviet/update.blade.php ENDPATH**/ ?>