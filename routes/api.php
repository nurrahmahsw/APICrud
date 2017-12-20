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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('Post','PostController',['except' => ['create','update','delete']]);
Route::post('Post','PostController@create');
Route::get('Post','PostController@read');
Route::put('Post/{id}','PostController@update');
Route::delete('Post/{id}','PostController@delete');