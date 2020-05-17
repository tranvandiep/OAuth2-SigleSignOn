@extends('layouts.admin')

@section('content')
	<div class="container-fluid spark-screen" style="background-color: white; padding-top: 15px">
		<div class="row">
			<div class="col-md-12">
				<a href="{{ route('viewNewsAdd') }}"><button class="btn btn-success" style="margin-bottom: 15px;">Add News</button></a>
				<table class="table table-bordered">
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Updated At</th>
						<th width="80px"></th>
						<th width="80px"></th>
					</tr>
					@foreach ($newsList as $item)
						<tr id="r_{{ $item->id }}">
							<td>{{ $index++ }}</td>
							<td>{{ $item->title }}</td>
							<td>{{ getTimeFormat($item->updated_at) }}</td>
							<td><a href="{{ route('viewNewsAdd') }}?id={{ $item->id }}"><button class="btn btn-warning">Edit</button></a></td>
							<td><button onclick="deleteNews({{ $item->id }})" class="btn btn-danger">Delete</button></td>
						</tr>
					@endforeach
				</table>
				{{ $newsList->links() }}
			</div>
		</div>
	</div>
@stop

@section('js')
<script type="text/javascript">
	function deleteNews(id) {
		$.post('{{ route('deleteNews') }}', {
			_token: '{{ csrf_token() }}',
			id:id
		}, function(data, status) {
			// location.reload();
			$('#r_'+id).remove();
		})
	}
</script>
@stop