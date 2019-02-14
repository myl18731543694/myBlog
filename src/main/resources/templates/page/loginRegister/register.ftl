<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册</title>

<!-- CSS -->
<!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"> -->
<link rel="stylesheet"
	href="/loginRegister/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/loginRegister/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/loginRegister/css/form-elements.css">
<link rel="stylesheet" href="/loginRegister/css/style.css">

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="/loginRegister/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/loginRegister/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/loginRegister/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/loginRegister/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/loginRegister/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>注册</strong> 博客
						</h1>
						<div class="description">
							<p>
								我只想，<a href="/"><strong>随便看看</strong></a>。
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>注册我们的网站</h3>
								<p>输入您的用户名和密码注册:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="" method="post" class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">Username</label> <input
										type="text" name="form-username" placeholder="用户名..."
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="form-password" placeholder="密码..."
										class="form-password form-control" id="form-password">
								</div>
								<button type="button" class="btn" onclick="registerUser()">注册</button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 social-login">
						已有账号？ <a href="/loginRegister/login"><strong>点我登录</strong></a>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- Javascript -->
	<script src="/loginRegister/js/jquery-1.11.1.min.js"></script>
	<script src="/loginRegister/bootstrap/js/bootstrap.min.js"></script>
	<script src="/loginRegister/js/jquery.backstretch.min.js"></script>
	<script src="/loginRegister/js/scripts.js"></script>
	<script>
		function registerUser() {
			$.ajax({
				url : "/loginRegister/registerUser",
				data : {
					userName : $("#form-username").val(),
					userPwd : $("#form-password").val()
				},
				dataType : "json",
				success : function(result) {
					if (result.code == 200) {
						alert(result.data);
					} else {
						alert(result.data);
					}
				}
			})
		}
	</script>
</body>

</html>