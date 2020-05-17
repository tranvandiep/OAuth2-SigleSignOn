<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class OAuth2Controller extends Controller {
	public function index(Request $request) {
		if (session()     ->has('token')) {
			return redirect()->route('welcome');
		}
		$oauth2_setting = DB::table('oauth2_setting')
			->orderBy('id', 'desc')
			->take(1)
			->get();

		$id = $clientId = $redirectUri = $oauth2Uri = $clientSecret = "";
		if ($oauth2_setting != null && count($oauth2_setting) > 0) {
			$clientId     = $oauth2_setting[0]->client_id;
			$redirectUri  = $oauth2_setting[0]->redirect_uri;
			$oauth2Uri    = $oauth2_setting[0]->oauth2_url;
			$clientSecret = $oauth2_setting[0]->client_secret;
			$id           = $oauth2_setting[0]->id;
		}

		return view('oauth2_setting')->with([
				"clientId"     => $clientId,
				"redirectUri"  => $redirectUri,
				"oauth2Uri"    => $oauth2Uri,
				"clientSecret" => $clientSecret,
				"id"           => $id
			]);
	}

	public function connection(Request $request) {
		$oauth2_setting = DB::table('oauth2_setting')
			->orderBy('id', 'desc')
			->take(1)
			->get();

		$id = $clientId = $redirectUri = $oauth2Uri = $clientSecret = "";
		if ($oauth2_setting != null && count($oauth2_setting) > 0) {
			$clientId     = $oauth2_setting[0]->client_id;
			$redirectUri  = $oauth2_setting[0]->redirect_uri;
			$oauth2Uri    = $oauth2_setting[0]->oauth2_url;
			$clientSecret = $oauth2_setting[0]->client_secret;
			$id           = $oauth2_setting[0]->id;
		}

		$query = http_build_query([
				'client_id'     => $id,
				'redirect_uri'  => $redirectUri.'/callback',
				'response_type' => 'code',
				'scope'         => ''
			]);

		return redirect($oauth2Uri.'/oauth/authorize?'.$query);
	}

	public function callback(Request $request) {
		$oauth2_setting = DB::table('oauth2_setting')
			->orderBy('id', 'desc')
			->take(1)
			->get();

		$id = $clientId = $redirectUri = $oauth2Uri = $clientSecret = "";
		if ($oauth2_setting != null && count($oauth2_setting) > 0) {
			$clientId     = $oauth2_setting[0]->client_id;
			$redirectUri  = $oauth2_setting[0]->redirect_uri;
			$oauth2Uri    = $oauth2_setting[0]->oauth2_url;
			$clientSecret = $oauth2_setting[0]->client_secret;
			$id           = $oauth2_setting[0]->id;
		}

		$response = (new \GuzzleHttp\Client)->post($oauth2Uri.'/oauth/token', [
				'form_params'    => [
					'grant_type'    => 'authorization_code',
					'client_id'     => intval($clientId),
					'client_secret' => $clientSecret,
					'redirect_uri'  => $redirectUri.'/callback',
					'code'          => $request->code,
				]
			]);

		session()->put('token', json_decode((string) $response->getBody(), true));

		return redirect()->route('welcome');
	}

	public function welcome(Request $request) {
		if (!session()    ->has('token')) {
			return redirect()->route('home');
		}

		$oauth2_setting = DB::table('oauth2_setting')
			->orderBy('id', 'desc')
			->take(1)
			->get();

		$oauth2Uri = "";
		if ($oauth2_setting != null && count($oauth2_setting) > 0) {
			$oauth2Uri = $oauth2_setting[0]->oauth2_url;
		}

		$response = (new \GuzzleHttp\Client)->get($oauth2Uri.'/api/profile', [
				'headers'        => [
					'Authorization' => 'Bearer '.\Session::get('token.access_token')
				]
			]);
		$user = json_decode((string) $response->getBody(), true);
		// if ($user == null || ($user['name'] == '' && $user['email'] == '')) {
		// 	return redirect()->route('home');
		// }

		return view('welcome')->with([
				'user' => $user
			]);
	}

	public function logout(Request $request) {
		if (!session()    ->has('token')) {
			return redirect()->route('home');
		}

		$oauth2_setting = DB::table('oauth2_setting')
			->orderBy('id', 'desc')
			->take(1)
			->get();

		$oauth2Uri = "";
		if ($oauth2_setting != null && count($oauth2_setting) > 0) {
			$oauth2Uri = $oauth2_setting[0]->oauth2_url;
		}

		$response = (new \GuzzleHttp\Client)->get($oauth2Uri.'/api/logout', [
				'headers'        => [
					'Authorization' => 'Bearer '.\Session::get('token.access_token')
				]
			]);
	}

	public function saveOauth2(Request $request) {
		if (isset($request->id) && $request->id > 0) {
			DB::table('oauth2_setting')
				->where('id', $request->id)
				->update([
					"client_id"     => $request->client_id,
					"redirect_uri"  => $request->redirect_uri,
					"oauth2_url"    => $request->oauth2_url,
					"client_secret" => $request->client_secret,
				]);
		} else {
			DB::table('oauth2_setting')->insert([
					"client_id"     => $request->client_id,
					"redirect_uri"  => $request->redirect_uri,
					"oauth2_url"    => $request->oauth2_url,
					"client_secret" => $request->client_secret,
				]);
		}
		return redirect()->route('home');
	}
}
