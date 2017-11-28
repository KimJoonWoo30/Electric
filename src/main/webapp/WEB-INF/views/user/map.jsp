<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- holder.js link -->
<script>
	$(document).ready(function() {
		$('#myCarousel').carousel('cycle');
		$('#myCarousel2').carousel('cycle');
	});
</script>
<style>
body {
	padding-top: 15px;
	font-size: 12px;
	padding: 0px;
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

footer {
	margin-top: 10%;
	padding-bottom: 3%;
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