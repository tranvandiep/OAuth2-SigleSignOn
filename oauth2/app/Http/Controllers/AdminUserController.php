<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminUserController extends Controller {
	public function showAll(Request $request) {
		$userList = DB::table('users');
		if (isset($request->q)) {
			$userList = $userList
				->where('name', 'like', '%'.$request->q.'%')
				->orWhere('email', 'like', '%'.$request->q.'%');
		}
		$userList = $userList->paginate(10);

		return view('admin.user.index')->with([
				'userList' => $userList,
				'index'    => 1
			]);
	}

	public function getProfile(Request $request) {
		if (Auth::user() == null) {
			return json_encode([
					'name'  => '',
					'email' => ''
				]);
		}
		return json_encode([
				'name'  => Auth::user()->name,
				'email' => Auth::user()->email
			]);
	}

	public function logout(Request $request) {
		if (Auth::user() != null) {
			Auth::logout();
		}
	}

	public function viewAdd(Request $request) {
		$id = $name = $email = '';
		if (isset($request->id)) {
			$user = DB::table('users')
				->where('id', $request->id)
				->get();
			if (count($user) > 0) {
				$name  = $user[0]->name;
				$email = $user[0]->email;
				$id    = $request->id;
			}
		}

		return view('admin.user.add')->with([
				'name'  => $name,
				'email' => $email,
				'id'    => $id
			]);
	}

	public function addUser(Request $request) {
		$name             = $request->fullname;
		$email            = $request->email;
		$password         = $request->password;
		$confirm_password = $request->confirm_password;
		if ($password != $confirm_password) {
			return redirect()->route('viewAdd');
		}

		if (isset($request->id) && $request->id > 0) {
			DB::table('users')
				->where('id', $request->id)
				->update([
					'name'       => $name,
					'email'      => $email,
					'password'   => bcrypt($password),
					'updated_At' => date('yy-m-d H:i:s')
				]);
		} else {
			DB::table('users')->insert([
					'name'       => $name,
					'email'      => $email,
					'password'   => bcrypt($password),
					'created_at' => date('yy-m-d H:i:s'),
					'updated_At' => date('yy-m-d H:i:s')
				]);
		}

		return redirect()->route('showAll');
	}

	public function searchEmail(Request $request) {
		$email    = $request->email;
		$students = DB::table('students')
			->where('email', $email)
			->get();
		if ($students != null && count($students) > 0) {
			return 'failed';
		}
		return 'success';
	}

	public function deleteUser(Request $request) {
		//request->id
		$id = $request->id;

		DB::table('users')
			->where('id', $id)
			->delete();

		echo "User is deleted!";
	}
}
