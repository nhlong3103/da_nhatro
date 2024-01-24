
<?php $__env->startSection('content'); ?>
    
    <hr>
    <div class="container responsive">
        <?php if(session('status')): ?>
            <div class="alert alert-success" role="alert">
                <?php echo e(session('status')); ?>

            </div>
        <?php endif; ?>

        <table class="table table-striped table-inverse">
            <thead class="thead-inverse">
                <tr>
                    <th>Họ tên</th>
                    <th>Tuổi</th>
                    <th>CCCD</th>
                    <th>Ảnh</th>
                    <th>Số điện thoại</th>
                    <th>User_id</th>
                    <th>Số tiền trong tài khoản</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $partner; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($item->hoTen); ?></td>
                        <td><?php echo e($item->tuoi); ?></td>
                        <td><?php echo e($item->CCCD); ?></td>
                        <td>
                            <img src="<?php echo e(url('public/images')); ?>/<?php echo e($item->anh); ?>" width="100" height="120">
                        </td>
                        <td><?php echo e($item->sdt); ?></td>
                        <td><?php echo e($item->user_id); ?></td>
                        <td><?php echo e($item->money); ?></td>

                        <td>
                            <?php if($item->type == 0): ?>
                                <span class="text text-danger" style="font-weight: bold">Chưa duyệt</span>
                            <?php else: ?>
                                <span class="text text-success" style="font-weight: bold">Đã duyệt</span>
                            <?php endif; ?>
                        </td>
                        <td>
                            <?php if($item->type == 0): ?>
                                <a href="<?php echo e(route('partner.update_permission', $item->user_id)); ?>"
                                    class="btn btn-primary">Duyệt</a>
                            <?php else: ?>
                                <a href="<?php echo e(route('partner.del_permission', $item->user_id)); ?>" class="btn btn-danger">Hủy
                                    quyền</a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/admin/partner/index.blade.php ENDPATH**/ ?>