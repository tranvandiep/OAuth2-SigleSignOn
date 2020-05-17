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
                    <li class="active"><a href="#home" class="smoothScroll">Trang Chủ</a></li>
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
        <div class="container">
            <div class="row">
                <h1 class="centered">What's News?</h1>
                <br>
                <br>
@php
    $news = \DB::table('news')
        ->select('title', 'href_param', 'updated_at', 'thumbnail')
        ->paginate(10);
    $index = 1;
@endphp
@foreach ($news as $item)
                <div class="col-lg-4 centered"  style="padding: 5px;">
                    <a href="{{ route('detailNews', $item->href_param) }}"><img src="{{ $item->thumbnail }}" style="height: 220px !important; width: auto;"></a>
                    <p>
                        <a href="{{ route('detailNews', $item->href_param) }}" style="font-weight: bold; font-size: 22px">{{ $item->title }}</a>
                    </p>
                    <p>
                        {{ getTimeFormat($item->updated_at) }}
                    </p>
                </div>
@endforeach
            {{ $news->links() }}
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
</script>
</body>
</html>
