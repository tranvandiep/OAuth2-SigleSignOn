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
Route::get('/', 'OAuth2Controller@index')->name('home');

Route::get('/connection', 'OAuth2Controller@connection')->name('connection');

Route::get('/callback', 'OAuth2Controller@callback')->name('callback');

Route::get('/welcome', 'OAuth2Controller@welcome')->name('welcome');

Route::get('/logout', 'OAuth2Controller@logout')->name('logout');

Route::post('/saveOauth2', 'OAuth2Controller@saveOauth2')->name('saveOauth2');

// Route::get('/callback', function (Illuminate\Http\Request $request) {
// 		$response = (new \GuzzleHttp\Client)->post('http://127.0.0.1:8000/oauth/token', [
// 				'form_params'    => [
// 					'grant_type'    => 'authorization_code',
// 					'client_id'     => 3,
// 					'client_secret' => 'IxbvhBf8e4uWwBk8DEEjpm8pqaoVK86oi3Yvmxtr',
// 					'redirect_uri'  => 'http://127.0.0.1:8001/callback',
// 					'code'          => $request->code,
// 				]
// 			]);

// 		session()->put('token', json_decode((string) $response->getBody(), true));

// 		return redirect('/todos');
// 	});

Route::get('/todos',
	function () {
		if (!session()->has('token')) {
			return redirect('/');
		}

		$response = (new GuzzleHttp\Client)->get('http://127.0.0.1:8000/api/todos', [
				'headers'        => [
					'Authorization' => 'Bearer '.Session::get('token.access_token')
				]
			]);

		return json_decode((string) $response->getBody(), true);
	});
