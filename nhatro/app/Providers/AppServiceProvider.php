<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use App\Models\tinh_thanhpho;
use App\Models\quan_huyen;
use App\Models\phuong_xa;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();

        view()->composer("*", function ($view) {
            $tinh_thanhpho = tinh_thanhpho::all();
            $quan_huyen = quan_huyen::all();
            $phuong_xa = phuong_xa::all();
            $view->with(compact('tinh_thanhpho', 'quan_huyen', 'phuong_xa'));
        });
    }
}
