<?php

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


Route::resource('categories', 'CategoryController');

Route::resource('posts', 'PostController');

Route::resource('products', 'ProductController');

Route::resource('moons', 'MoonController');

Route::resource('roles', 'RoleController');


Route::resource('ads', 'AdsController');

Route::resource('webpages', 'WebpageController');

Route::resource('adsWebpages', 'ads_webpageController');

Route::resource('moes', 'MoeController');

Route::resource('processes', 'ProcessController');


Route::resource('aungs', 'AungController');

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::resource('thus', 'ThuController');