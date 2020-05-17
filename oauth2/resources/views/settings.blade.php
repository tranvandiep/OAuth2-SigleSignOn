@extends('layouts.admin')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <passport-authorized-clients></passport-authorized-clients>
            <passport-clients></passport-clients>
            <passport-personal-access-tokens></passport-personal-access-tokens>
        </div>
    </div>
</div>
@endsection