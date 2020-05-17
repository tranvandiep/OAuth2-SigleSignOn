@extends('layouts.admin')

@section('css')
<link rel="stylesheet" href="{{ asset('vendor/summernote.css') }}">
@stop

@section('js')
<script type="text/javascript" src="{{ asset('vendor/upload.js') }}"></script>
<script src="{{ asset('vendor/summernote.js') }}"></script>

<script type="text/javascript">
	$(function() {
		//editor setup
		$('#summernote').summernote({
			height: 500,
			toolbar: [
			    ['style', ['style']],
			    ['font', ['bold', 'italic', 'underline', 'clear']],
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['color', ['color']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['table', ['table']],
			    ['insert', ['link', 'picture', 'video']],
			    ['misc', ['fullscreen', 'codeview', 'undo', 'redo', 'help']]
			  ]
		});
	})
</script>
@stop

@section('content')
	<div class="container-fluid spark-screen" style="background-color: white; padding-top: 15px">
		<div class="row">
			<div class="col-md-12">
				<form method="post" action="{{ route('postNews') }}">
					{{ csrf_field() }}
					<div class="form-group">
						<label>Title</label>
						<input type="text" name="id" value="{{ $id }}" style="display: none;">
						<input type="text" name="title" class="form-control" placeholder="Enter title" value="{{ $title }}">
					</div>
					<div class="form-group">
						<label>Thumbnail</label>
						<input type="text" name="thumbnail" class="form-control" placeholder="Enter thumbnail" value="{{ $thumbnail }}">
					</div>
					<div class="form-group">
						<label>Content</label>
						<textarea id="summernote" rows="5" name="content" class="form-control">{{ $content }}</textarea>
					</div>
					<button class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
@stop