<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.2.1.js"></script>
<!-- holder.js link -->
<style>
body {
	padding-top: 15px;
	font-size: 12px;
	padding: 0px;
}

.main {
	max-width: 320px;
	margin: 0 auto;
}

.container {
	position: relative;
	top: 10%;
	margin-top: -3%;
	font-size: 1.5em;
}

.login-or {
	position: relative;
	font-size: 18px;
	color: #aaa;
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.span-or {
	display: block;
	position: absolute;
	left: 50%;
	top: -2px;
	margin-left: -25px;
	background-color: #fff;
	width: 50px;
	text-align: center;
}

.hr-or {
	background-color: #cdcdcd;
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

h3 {
	text-align: center;
	line-height: 300%;
}

h2 {
	color: #0099cc;
	font-family: Bauhaus 93;
	font-style: oblique;
}

.mainImg {
	z-index: -100;
}

header {
	position: absolute;
	top: 0px;
	left: 5%;
}

header:hover {
	text-decoration: none;
}

footer {
	margin-top: 10%;
	padding-bottom: 3%;
}

div h1 {
	text-align: center;
}
</style>
</head>
<body>


	<div class="mainImg">
		<img src="/resources/kdn.jpg"></img>
	</div>
	<header>
		<a href="/user/main"><h2>E-CATCHIN</h2></a>
	</header>

	<div class="container">
		<div class="row">
			<div class="main">
				<h1>E-CATCHIN</h1>
				<div class="login-or">
					<hr class="hr-or">
				</div>
				<form action="/" method="get">
					<div class="form-group">
						<label for="inputUsernameEmail">Username or email</label>
						<input type="text" class="form-control" id="inputUsernameEmail" placeholder="admin">
					</div>
					<div class="form-group">
						<a class="pull-right" href="#">Forgot password?</a>
						<label for="inputPassword">Password</label>
						<input type="password" class="form-control" id="inputPassword" placeholder="admin">
					</div>
					<div class="checkbox pull-right">
						<label>
							<input type="checkbox">
							Remember me
						</label>
					</div>
					<button type="submit" class="btn btn btn-primary">Log In</button>
				</form>
			</div>
		</div>
	</div>

	<footer>
		<div class="row">
			<hr>
			<div class="col-lg-12">
				<div class="col-md-8">
					<a href="#">Terms of Service</a> | <a href="#">Privacy</a>
				</div>
				<div class="col-md-4">
					<p class="muted pull-right">© 2017 Company Name(KKPAC) All rights reserved [김준우|김홍석|박승현|안기효|최광호]</p>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>