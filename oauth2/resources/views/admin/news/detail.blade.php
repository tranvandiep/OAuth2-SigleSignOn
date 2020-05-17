<!DOCTYPE html>
<!--
Landing page based on Pratt: http://blacktie.co/demo/pratt/
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Single Sign On">
    <meta name="author" content="Single Sign On">

    <meta property="og:title" content="Single Sign On" />
    <meta property="og:type" content="website" />
    <meta property="og:description" content="Single Sign On" />
    <meta property="og:url" content="http://demo.adminlte.acacha.org/" />
    <meta property="og:image" content="http://demo.adminlte.acacha.org/img/AcachaAdminLTE.png" />
    <meta property="og:image" content="http://demo.adminlte.acacha.org/img/AcachaAdminLTE600x600.png" />
    <meta property="og:image" content="http://demo.adminlte.acacha.org/img/AcachaAdminLTE600x314.png" />
    <meta property="og:sitename" content="demo.adminlte.acacha.org" />
    <meta property="og:url" content="http://demo.adminlte.acacha.org" />

    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@acachawiki" />
    <meta name="twitter:creator" content="@acacha1" />

    <title>Single Sign On</title>

    <!-- Custom styles for this template -->
    <link href="{{ asset('/css/all-landing.css') }}" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <style type="text/css">
        body {
            font-family: "Times New Roman", Times, serif !important;
        }
    </style>
</head>

<body data-spy="scroll" data-offset="0" data-target="#navigation">

<div id="app">
    <!-- Fixed navbar -->
    <div id="navigation" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><b>Single Sign On</b></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="{{ route('welcome') }}" class="smoothScroll">Trang Chủ</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    @if (Auth::guest())
                        <li><a href="{{ url('/login') }}">Đăng Nhập</a></li>
                        <li><a href="{{ url('/register') }}">Đăng Ký</a></li>
                    @else
                        <li><a href="{{ route('showAll') }}">Trang Quản Trị <strong>{{ Auth::user()->name }}</strong></a></li>
                    @endif
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

    <!-- FEATURES WRAP -->
    <div id="features" style="background-color: white !important;">
        <div class="container" style="background-color: white !important;">
            <div class="row" style="background-color: white !important;">
                <h1 class="centered">{{ $detail->title }}</h1>
                <br>
                <br>
                <div class="col-lg-12">
                    {!! $detail->content !!}
                </div>
            </div>
            <div class="row" style="background-color: white !important; margin-top: 35px;">
                <div class="col-md-12">
                    @if (Auth::user() != null)
                        <p style="color: black;">Xin Chào <strong style="color: red">{{ Auth::user()->name }}</strong>! Vui lòng để lại tin nhắn.</p>
                    @else
                        <p style="color: black;">Đăng nhập để gửi phản hồi.</p>
                    @endif
                    <textarea rows="3" class="form-control" id="comments" style="width: 520px; font-size: 20px"></textarea>
                    <button class="btn btn-success" style="margin-top: 20px" onclick="sendComment()">Phản Hồi</button>
                </div>
            </div>
@php
    $comments = DB::table('comments')
        ->leftJoin('users', 'users.id', '=', 'comments.id_user')
        ->where('comments.id_post', $detail->id)
        ->orderBy('comments.created_at', 'desc')
        ->paginate(5);
    $index = 0;
@endphp
@foreach ($comments as $element)
<div class="row" style="background-color: white !important; margin-top: 35px;">
    <div class="col-md-12">
        <div class="alert alert-{{ ($index++ % 2 == 0)?'success':'warning' }}" style="width: 520px; text-align: {{ ($index % 2 == 0)?'right':'left' }};">
        <p><strong>{{ $element->name }}</strong></p>
        <p>Ngày Viết: {{ getTimeFormat($element->created_at) }}</p>
        <p>
            {{ $element->comment }}
        </p>
        </div>
    </div>
</div>
@endforeach
<div class="row" style="background-color: white !important; margin-top: 35px;">
    <div class="col-md-12">
        {!! $comments->links() !!}
    </div>
</div>
        </div><!--/ .container -->
    </div><!--/ #features -->

    <div id="c">
        <div class="container">
            <p>Dự Án Single Sign On</p>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{ asset('/js/app.js') }}"></script>
<script src="{{ asset('/js/smoothscroll.js') }}"></script>
<script>
    $('.carousel').carousel({
        interval: 3500
    })

    function sendComment() {
        $.post('{{ route('sendCommnet') }}', {
            "_token": "{{ csrf_token() }}",
            "id": {{ $detail->id }},
            "comment": $("#comments").val()
        }, function(data) {
            location.reload()
        })
    }
</script>
</body>
</html>
