<!doctype html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <?php echo $__env->yieldContent('css'); ?>

</head>

<body>

    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <div class="col-md-4 col-12">
                <div class="row">
                    <a class="navbar-brand" href="<?php echo e(url('/')); ?>">
                        <?php echo e(config('Trang chủ', 'Trang chủ')); ?>

                    </a>
                </div>
            </div>

            

            <div class="col-md-5 col-12">
                <!-- Right Side Of Navbar -->
                <div class="row">
                    <ul class="nav justify-content-end">
                        <!-- Authentication Links -->
                        <?php if(auth()->guard()->guest()): ?>
                            <?php if(Route::has('login')): ?>
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="<?php echo e(route('login')); ?>"><?php echo e(__('Đăng nhập')); ?></a>
                                </li>
                            <?php endif; ?>

                            <?php if(Route::has('register')): ?>
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="<?php echo e(route('register')); ?>"><?php echo e(__('Đăng kí')); ?></a>
                                </li>
                            <?php endif; ?>
                        <?php else: ?>
                            <?php if (! (auth()->user()->can('admin') ||
                                    auth()->user()->can('partner'))): ?>
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="<?php echo e(route('partner.create')); ?>"><?php echo e(__('Đăng kí đối tác')); ?></a>
                                </li>
                            <?php endif; ?>


                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->any(['admin', 'partner'])): ?>
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="<?php echo e(route('partner.napTien')); ?>"><?php echo e(__('Nạp tiền vào tài khoản')); ?></a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-reset text-decoration-none" href="#"
                                        role="button" data-toggle="dropdown" aria-expanded="false">
                                        Quản lý bài đăng
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="<?php echo e(route('baiviet.create')); ?>"><?php echo e(__('Đăng tin')); ?></a>
                                        <div class="dropdown-divider"></div>

                                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin')): ?>
                                            <a class="dropdown-item"
                                                href="<?php echo e(route('baiviet.index')); ?>"><?php echo e(__('Danh sách tin đã đăng')); ?></a>
                                        <?php endif; ?>

                                        <a class="dropdown-item"
                                            href="<?php echo e(route('baiviet.index_for_user')); ?>"><?php echo e(__('Danh sách tin của bạn')); ?></a>
                                    </div>
                                </li>
                            <?php endif; ?>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-reset text-decoration-none" href="#"
                                    role="button" data-toggle="dropdown" aria-expanded="false">
                                    Xin chào: <?php echo e(Auth::user()->name); ?>

                                </a>
                                <div class="dropdown-menu">
                                    <div class="">
                                        <a class="dropdown-item text-reset text-decoration-none"
                                            href="<?php echo e(route('logout')); ?>"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            <?php echo e(__('Đăng xuất')); ?>

                                        </a>

                                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST"
                                            class="d-none">
                                            <?php echo csrf_field(); ?>
                                        </form>
                                    </div>

                                    <div class="dropdown-divider"></div>

                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('partner')): ?>
                                        <a href="<?php echo e(route('partner.detail', [Auth::user()->id])); ?>"
                                            class="dropdown-item text-reset text-decoration-none">
                                            <?php echo e(__('Thông tin partner')); ?>

                                        </a>
                                    <?php endif; ?>

                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('admin')): ?>
                                        <a class="dropdown-item text-reset text-decoration-none"
                                            href="<?php echo e(route('partner.index')); ?>">
                                            <?php echo e(__('Danh sách partner')); ?>

                                        </a>
                                    <?php endif; ?>

                                </div>
                            </li>




                            
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div>
        <?php echo $__env->yieldContent('content'); ?>
    </div>

    <script src="<?php echo e(url('public')); ?>/js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
    </script>

    <?php echo $__env->yieldContent('js'); ?>
</body>

</html>
<?php /**PATH C:\xampp\htdocs\nhatro\resources\views/layouts/app.blade.php ENDPATH**/ ?>