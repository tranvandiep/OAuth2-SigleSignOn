<!DOCTYPE html>
<html lang="en">
<head>
  <title>Single Sign On - Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid" style="text-align: center;">
  <div class="panel panel-primary" style="width: 60%;margin-left: 20%; margin-top: 30px">
  	<div class="panel-heading">
  		<h1>THÔNG TIN TÀI KHOẢN</h1>
  	</div>
  	<div class="panel-body">
  		<table class="table table-hover table-bordered">
  			<thead>
  				<th>Tài Khoản</th>
  				<th>Email</th>
  				<th></th>
  			</thead>
  			<tbody>
  				<tr>
  					<td>{{ $user['name'] }}</td>
  					<td>{{ $user['email'] }}</td>
  					<td><button class="btn btn-success">Xin Chào</button></td>
  				</tr>
  			</tbody>
  		</table>
  	</div>
  </div>
</div>
<script type="text/javascript">
	function logout() {
		$.get('{{ route('logout') }}', function(data) {
			location.reload()
		})
	}
</script>
</body>
</html>