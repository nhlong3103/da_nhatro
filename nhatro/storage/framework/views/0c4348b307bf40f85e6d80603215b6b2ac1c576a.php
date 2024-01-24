
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

                        <form method="POST" action="<?php echo e(route('partner.req_update_detail')); ?>" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Họ tên</label>
                                        <input type="text" name="hoTen" id="" value="<?php echo e($partner->hoTen); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Tuổi</label>
                                        <input type="number" name="tuoi" id="" value="<?php echo e($partner->tuoi); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">CCCD</label>
                                        <input type="number" name="CCCD" id="" value="<?php echo e($partner->CCCD); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Số điện thoại cá nhân</label>
                                        <input type="number" name="sdt" id="" value="<?php echo e($partner->sdt); ?>"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh</label>
                                <input type="file" name="anh" id="" class="form-control-file"
                                    id="anh">
                            </div>
                            <img src="<?php echo e(url('public/images')); ?>/<?php echo e($partner->anh); ?>" width="100" height="120">

                            <br><br>

                            <button type="submit" class="btn btn-primary">Cập nhật</button>

                            <h6 style="color: red">Lưu ý, sau khi cập nhật, bạn sẽ phải đợi admin xét duyệt lại. Trong
                                khoảng thời gian đó, bạn sẽ không thể đăng hay sửa bài!</h6>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/client/partner_detail.blade.php ENDPATH**/ ?>