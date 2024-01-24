
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
                    <th>Tiêu đề</th>
                    <th>Giá tiền</th>
                    <th>Diện tích</th>
                    <th>Ảnh giới thiệu</th>
                    <th>Loại</th>
                    <th>Xem chi tiết</th>
                    <th>Quản lý</th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $baiviet; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($item->tieu_de); ?></td>
                        <td><?php echo e($item->gia_tien); ?></td>
                        <td><?php echo e($item->dien_tich); ?></td>
                        <td>
                            <?php $__currentLoopData = explode(',', $item->anh_gioi_thieu); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $imageName): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <img src="<?php echo e(url('public/images')); ?>/<?php echo e(trim($imageName)); ?>" width="100" height="120">
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </td>

                        <td>
                            <?php if($item->type == 0): ?>
                                <span class="text text-success" style="font-weight: bold">Nhà trọ</span>
                            <?php elseif($item->type == 1): ?>
                                <span class="text text-success" style="font-weight: bold">CCMN</span>
                            <?php else: ?>
                                <span class="text text-success" style="font-weight: bold">Nhà nguyên căn</span>
                            <?php endif; ?>
                        </td>
                        <td></td>
                        <td>
                            <a href="<?php echo e(route('baiviet.update', $item->id)); ?>" class="btn btn-primary">Chỉnh sửa</a>
                            <form action="<?php echo e(route('baiviet.del', $item->id)); ?>" method="POST">
                                <?php echo method_field('DELETE'); ?>
                                <?php echo csrf_field(); ?>
                                <button onclick="return confirm('Bạn có chắc muốn xóa bài đăng này không?')"
                                    class="btn btn-danger">Xóa</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <div class="pagi">
                    <?php echo e($baiviet->links()); ?>

                </div>
            </tbody>
        </table>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\nhatro\resources\views/admin/baiviet/index.blade.php ENDPATH**/ ?>