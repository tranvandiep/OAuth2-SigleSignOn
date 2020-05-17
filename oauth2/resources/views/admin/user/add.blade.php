@extends('layouts.admin')

@section('content')
	<div class="container-fluid spark-screen" style="background-color: white; padding-top: 15px">
		<div class="row">
			<div class="col-md-12">
				<form method="post" action="{{ route('postUser') }}">
					{{ csrf_field() }}
					<div class="form-group">
						<label>Full Name</label>
						<input type="text" name="id" value="{{ $id }}" style="display: none;">
						<input type="text" name="fullname" class="form-control" placeholder="Enter full name" value="{{ $name }}">
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="text" name="email" class="form-control" placeholder="Enter email" value="{{ $email }}">
					</div>
					<div class="form-group">
						<label>Password</label>
						<input type="password" name="password" class="form-control" placeholder="Enter password">
					</div>
					<div class="form-group">
						<label>Confirm Password</label>
						<input type="password" name="confirm_password" class="form-control" placeholder="Enter Confirm Password">
					</div>
					<button class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
@stop