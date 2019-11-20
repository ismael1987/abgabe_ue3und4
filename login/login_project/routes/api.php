<?php

use Illuminate\Http\Request;

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
Route::prefix('v1')->group(function(){
    Route::post('/user/findUsers', 'Api\AuthController@find_user');
    Route::post('/user/login', 'Api\AuthController@login');
    Route::post('/user/register', 'Api\AuthController@register');
    Route::group(['middleware' => 'auth:api'], function(){
        Route::get('/user/login', 'Api\AuthController@get_user');
        Route::post('/user/create', 'Api\AuthController@register');

    });
});
