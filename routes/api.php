<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


//user
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('/loginss', 'Api\AuthController@login');
    Route::post('/registers', 'Api\AuthController@register');
    Route::post('/refresh', 'Api\AuthController@refresh');
    Route::post('/logouts', 'Api\AuthController@logout');
    Route::get('/userprofile', 'Api\AuthController@userProfile');
    Route::post('add-review','Api\ReviewController@add_review');

});


Route::get('get-product','Api\ProductController@get_product');
Route::get('top-get-product','Api\ProductController@get_top_product');
Route::get('stars-review','Api\ProductController@stars_review');
Route::get('review','Api\ReviewController@get_review');


Route::get('search','Api\ProductController@searchs');

Route::get('get-of-product','Api\ReviewController@get_product_reviews');
Route::get('get-cat-product','Api\CatogeryController@get_top_product');
Route::get('get-max-pro-rev-cat','Api\CatogeryController@get_best_product_of_catogery');

Route::get('get-max-pro-rev-brand','Api\brandsController@get_best_product_of_brands');
Route::get('get-max-worest-pro-rev-brand','Api\brandsController@worest_pro_barands');




Route::get('get-brand-from-cat','Api\CatogeryController@get_brand_from_cat');
Route::get('get-catogery-from-brand','Api\brandsController@get_cat_from_brand');
