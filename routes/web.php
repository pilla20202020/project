<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');



Route::get('logout', 'Auth\LoginController@logout');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {

    

    Route::group(['as' => 'dashboard.', 'prefix' => 'dashboard'], function () {
        Route::get('', 'Backend\DashboardController@index')->name('index');
    });

    

    /*
        |--------------------------------------------------------------------------
        | Page CRUD Routes
        |--------------------------------------------------------------------------
        */
   

    Route::group(['as' => 'blog.', 'prefix' => 'blog'], function () {
        Route::get('', 'Backend\BlogController@index')->name('index');
        Route::get('create', 'Backend\BlogController@create')->name('create');
        Route::post('', 'Backend\BlogController@store')->name('store');
        Route::put('{blog}', 'Backend\BlogController@update')->name('update');
        Route::get('{blog}/edit', 'Backend\BlogController@edit')->name('edit');
        Route::get('{id}', 'Backend\BlogController@destroy')->name('destroy');

    });

    
});

Route::get('', 'Frontend\FrontendController@homepage')->name('homepage');


Route::get('customerform', 'Backend\CustomerController@customerForm')->name('customerform');
Route::post('customerform/store', 'Backend\CustomerController@store')->name('customerform.store');




