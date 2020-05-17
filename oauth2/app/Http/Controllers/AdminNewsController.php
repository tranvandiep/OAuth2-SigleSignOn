<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminNewsController extends Controller {
	public function showAll(Request $request) {
		$newsList = DB::table('news');
		if (isset($request->q)) {
			$newsList = $newsList
				->where('title', 'like', '%'.$request->q.'%');
		}
		$newsList = $newsList->paginate(10);

		return view('admin.news.index')->with([
				'newsList' => $newsList,
				'index'    => 1
			]);
	}

	public function sendCommnet(Request $request) {
		if (Auth::user() == null) {
			return;
		}

		$id      = $request->id;
		$comment = $request->comment;
		DB::table('comments')
			->insert([
				'id_post'    => $id,
				'comment'    => $comment,
				'id_user'    => Auth::id(),
				'created_at' => date('Y-m-d H:i:s'),
				'updated_at' => date('Y-m-d H:i:s')
			]);
	}

	public function detailNews(Request $request, $href_param) {
		$news = DB::table('news')
			->where('href_param', $href_param)
			->get();
		return view('admin.news.detail')->with([
				'detail' => $news[0],
			]);
	}

	public function viewAdd(Request $request) {
		$id = $title = $content = $thumbnail = '';
		if (isset($request->id)) {
			$news = DB::table('news')
				->where('id', $request->id)
				->get();
			if (count($news) > 0) {
				$title     = $news[0]->title;
				$content   = $news[0]->content;
				$id        = $request->id;
				$thumbnail = $news[0]->thumbnail;
			}
		}

		return view('admin.news.add')->with([
				'title'     => $title,
				'content'   => $content,
				'id'        => $id,
				'thumbnail' => $thumbnail
			]);
	}

	public function addNews(Request $request) {
		$title     = $request->title;
		$content   = $request->content;
		$thumbnail = $request->thumbnail;
		$hrefParam = exportParam($title);

		if (isset($request->id) && $request->id > 0) {
			DB::table('news')
				->where('id', $request->id)
				->update([
					'title'      => $title,
					'href_param' => $hrefParam,
					'content'    => $content,
					'thumbnail'  => $thumbnail,
					'updated_At' => date('Y-m-d H:i:s')
				]);
		} else {
			DB::table('news')->insert([
					'title'      => $title,
					'href_param' => $hrefParam,
					'content'    => $content,
					'thumbnail'  => $thumbnail,
					'updated_At' => date('Y-m-d H:i:s'),
					'created_at' => date('Y-m-d H:i:s')
				]);
		}

		return redirect()->route('showNewsAll');
	}

	public function deleteNews(Request $request) {
		//request->id
		$id = $request->id;

		DB::table('news')
			->where('id', $id)
			->delete();

		echo "News is deleted!";
	}
}
