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
	})->name('welcome');

Auth::routes();
Route::resource('todos', 'TodoController');
Route::get('/settings', 'SettingsController@index')->name('settings');
Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix' => '/admin/user'], function () {
		Route::get('/view', 'AdminUserController@viewAdd')->name('viewAdd');

		Route::post('/post', 'AdminUserController@addUser')->name('postUser');

		Route::get('/list', 'AdminUserController@showAll')->name('showAll');

		Route::post('/delete', 'AdminUserController@deleteUser')->name('deleteUser');
	});

Route::group(['prefix' => '/admin/news'], function () {
		Route::get('/view', 'AdminNewsController@viewAdd')->name('viewNewsAdd');

		Route::post('/post', 'AdminNewsController@addNews')->name('postNews');

		Route::get('/list', 'AdminNewsController@showAll')->name('showNewsAll');

		Route::get('/{href_param}.html', 'AdminNewsController@detailNews')->name('detailNews');

		Route::post('/delete', 'AdminNewsController@deleteNews')->name('deleteNews');

		Route::post('/sendCommnet', 'AdminNewsController@sendCommnet')->name('sendCommnet');
	});