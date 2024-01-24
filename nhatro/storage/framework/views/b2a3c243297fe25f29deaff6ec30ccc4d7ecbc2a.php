
<?php $__env->startSection('content'); ?>
    
    <hr>
    <div class="container responsive">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Đăng kí đối tác</div>

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

                        <form method="POST" action="<?php echo e(route('partner.postCreate')); ?>" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Họ tên</label>
                                        <input type="text" name="hoTen" id="" value="<?php echo e(old('hoTen')); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Tuổi</label>
                                        <input type="number" name="tuoi" id="" value="<?php echo e(old('tuoi')); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">CCCD</label>
                                        <input type="number" name="CCCD" id="" value="<?php echo e(old('CCCD')); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Số điện thoại cá nhân</label>
                                        <input type="number" name="sdt" id="" value="<?php echo e(old('sdt')); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh</label>
                                <input type="file" name="anh" id="" class="form-control-file"
                                    id="anh">
                            </div>

                            <div class="form-group">
                                <label for="">Chấp nhận điều khoản</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="type" id="" value="0"
                                            checked="checked">
                                        Không đồng ý
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="1">
                                        Đồng ý
                                    </label>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Đăng ký</button>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/admin/partner/create.blade.php ENDPATH**/ ?>