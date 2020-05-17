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

Route::middleware('auth:api')->get('/todos',

function (Request $request) {
		return $request->user()->todos;
	});

Route::middleware('auth:api')->get('/profile', function (Request $request) {
		return json_encode([
				'name'  => $request->user()->name,
				'email' => $request->user()->email
			]);
	});

Route::middleware('auth:api')->get('/logout', function (Request $request) {
		$accessToken = $request->user()->token();
		\DB::table('oauth_refresh_tokens')
			->where('access_token_id', $accessToken->id)
			->update([
				'revoked' => true
			]);

		$accessToken->revoke();
	});