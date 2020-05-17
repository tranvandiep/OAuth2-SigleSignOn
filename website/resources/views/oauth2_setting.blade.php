<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>OAuth2 Setting</title>

  <!-- Bootstrap core CSS -->
  <link href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <link href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="{{ asset('css/coming-soon.min.css') }}" rel="stylesheet">

  <style type="text/css">
    @media (min-width:320px)  {
      .custom-css {
        min-width: 280px !important;
      }
    }
    @media (min-width:480px)  {
      .custom-css {
        min-width: 380px !important;
      }
    @media (min-width:600px)  {
      .custom-css {
        min-width: 380px !important;
      }
    }
    @media (min-width:801px)  {
      .custom-css {
        min-width: 420px !important;
      }
    }
    @media (min-width:1025px) {
      .custom-css {
        min-width: 420px !important;
      }
    }
    @media (min-width:1281px) {
      .custom-css {
        min-width:420px !important;
      }
    }
  </style>
</head>

<body>

  <div class="overlay"></div>
  <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
    <source src="{{ asset('mp4/bg.mp4') }}" type="video/mp4">
  </video>

  <div class="masthead">
    <div class="masthead-bg"></div>
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-12 my-auto">
          <div class="masthead-content text-white py-5 py-md-0">
            <h1 class="mb-3">OAuth2</h1>
            <p class="mb-5">Single Sign On
              <strong>2020</strong>! Let's Go!</p>
            <div class="input-group input-group-newsletter">
              <input type="email" class="form-control" placeholder="Let's Go..." aria-label="..." aria-describedby="basic-addon">
              <div class="input-group-append">
                <button class="btn btn-secondary" type="button" onclick="window.open('{{ route('connection') }}', '_self')">Connection!</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="social-icons">
    <form method="post" action="{{ url('/saveOauth2') }}">
      {{ csrf_field() }}
    <ul class="list-unstyled text-center mb-0 custom-css">
      <li class="list-unstyled-item" style="margin-bottom: 25px !important;">
        <div class="input-group input-group-newsletter">
          <input type="text" name="id" value="{{ $id }}" style="display: none;">
          <input required type="text" name="client_id" class="form-control" placeholder="Enter Client ID..." aria-label="Enter Client ID..." aria-describedby="basic-addon" style="height: auto;font-size: 1rem;padding: 1rem;" value="{{ $clientId }}">
        </div>
      </li>
      <li class="list-unstyled-item" style="margin-bottom: 25px !important;">
        <div class="input-group input-group-newsletter">
          <input required type="text" name="redirect_uri" class="form-control" placeholder="Enter Redirect URI..." aria-label="Enter Redirect URI..." aria-describedby="basic-addon" style="height: auto;font-size: 1rem;padding: 1rem;" value="{{ $redirectUri }}">
        </div>
      </li>
      <li class="list-unstyled-item" style="margin-bottom: 25px !important;">
        <div class="input-group input-group-newsletter">
          <input required type="text" name="oauth2_url" class="form-control" placeholder="Enter OAuth2 URI..." aria-label="Enter OAuth2 URI..." aria-describedby="basic-addon" style="height: auto;font-size: 1rem;padding: 1rem;" value="{{ $oauth2Uri }}">
        </div>
      </li>
      <li class="list-unstyled-item" style="margin-bottom: 25px !important;">
        <div class="input-group input-group-newsletter">
          <input type="checkbox" name="terms" hidden="true" checked>
          <input required type="text" name="client_secret" class="form-control" placeholder="Enter Client Secret..." aria-label="Enter Client Secret..." aria-describedby="basic-addon" style="height: auto;font-size: 1rem;padding: 1rem;" value="{{ $clientSecret }}">
        </div>
      </li>
      <li class="list-unstyled-item">
        <button type="submit" class="btn btn-success" type="button" style="font-size: 1rem;font-weight: 700;text-transform: uppercase;letter-spacing: 1px;padding: 1rem; float: right; width: 100%">Lưu Cài Đặt OAuth2!</button>
      </li>
    </ul>
    </form>
  </div>
{{-- facebook start --}}

  <!-- Bootstrap core JavaScript -->
  <script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

  <!-- Custom scripts for this template -->
  <script src="{{ asset('js/coming-soon.min.js') }}"></script>

</body>

</html>