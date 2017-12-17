<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="/resources/css/dashboard.css" rel="stylesheet" type="text/css" />

<link href="/resources/css/right-side-table.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/right-side-table.js" type="text/javascript"></script>
<link rel='stylesheet' href='/resources/bootstrap/css/Nwagon.css' type='text/css'>
<script src='/resources/js/Nwagon.js'></script>

<style>
svg text {
	pointer-events: none;
	font-size: 10px;
}

.place-label {
	font: bold 15px sans-serif;
}

.doubt {
	background-color: red;
}

html {
	height: 100%;
}

body {
	background: #333;
	text-align: center;
	min-height: 100%;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.linear-wipe {
	text-align: center;
	background: -webkit-linear-gradient(left, #FFF 20%, #FF0 40%, #FF0 60%, #FFF 80%);
	background: linear-gradient(to right, #FFF 20%, #FF0 40%, #FF0 60%, #FFF 80%);
	color: #000;
	background-clip: text;
	background-size: 200% auto;
	text-fill-color: transparent;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	-webkit-animation: shine 1s linear infinite;
	animation: shine 1s linear infinite;
}

@-webkit-keyframes shine {to { background-position:200%center;
	
}}

@keyframes shine {to { background-position:200%center;}}

</style>

</head>
<body class="home">
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation">
				<div class="logo">
					<a href="/"><h1 class="linear-wipe">E-CHACHIN</h1></a>
				</div>
				<div class="navi">
					<ul>
						<li><a href="/"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs hidden-sm">홈</span></a></li>
						<li class="active"><a href="#"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">차트</span></a></li>
					</ul> 
				</div>
			</div>
			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
				<div class="row">
					<header>
						<div class="col-md-7">
							<nav class="navbar-default pull-left">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="offcanvas" data-target="#side-menu" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
									</button>
								</div>
							</nav>
							<div class="search hidden-xs hidden-sm">
								<input type="text" placeholder="Search" id="search">
							</div>
						</div>
						<div class="col-md-5">
							<div class="header-rightside">
								<ul class="list-inline header-top pull-right">
									<li class="hidden-xs"><a href="#" class="add-project" data-toggle="modal" data-target="#add_project">Add Project</a></li>
									<li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
									<li><a href="#" class="icon-info"> <i class="fa fa-bell" aria-hidden="true"></i> <span class="label label-primary">3</span>
									</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li>
												<div class="navbar-content">
													<span>JS Krishna</span>
													<p class="text-muted small">me@jskrishna.com</p>
													<div class="divider"></div>
													<a href="#" class="view btn-sm active">View Profile</a>
												</div>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</header>
				</div>
				
				
				
				<div class="user-dashboard">
					<h2 style="color: gray;">${house.house_number}에
						대한  전력 사용량 그래프(<span id="endDate"></span> 기준)
					</h2>
					<div id="chart71" style="float: left; margin-right: -10%;"></div>

					<div class="col-md-3 col-xs-12 user-stats" style="float: right; margin-top: 10%; margin-right: 5%;">
						<div class="well" style="height: 400px;">
							<h3>
								<strong>가구번호: </strong>${house.house_number} <span class="label label-info">사용자</span>
							</h3>
							<h3>
								<strong>이름: </strong>${house.name}
							</h3>
							<h3>
								<strong>지역: </strong>${house.region}
							</h3>
							<h3>
								<strong>전력 종류: </strong>${house.eType}
							</h3>
							<h3>
								<strong>의심지수: </strong><span class="doubt">${house.doubt}</span>
							</h3>
							<h3>
								<strong>실시간 사용량: </strong><span id="cUse"></span>
							</h3>
						</div>
					</div>
					</div>
					
					<hr />
					<div id ="c72" style="clear:both;">
					<h2 style="color: gray;">${house.house_number}에
							대한 실시간 전력 사용량 그래프(<span id="cDate"></span> 기준)
					</h2>
					<div id="chart72"></div>
				</div>
				</div>

			</div>

		</div>

	</div>

	<script>
	$(document).ready(
		function(){
			graph_loading();
			setInterval("graph_loading()", 300000);
	});
	
	function graph_loading(){
		$.get("/detail/current/"+"${house.house_number}", function(data){
			$("#chart72").remove();
			$("#c72").append('<div id="chart72"></div>');
			jsonObj = data;
			changeGraph(jsonObj);
		});
	}
	
	</script>
	<script>
	$(document).ready(function(){
		   $('[data-toggle="offcanvas"]').click(function(){
		       $("#navigation").toggleClass("hidden-xs");
		   });
		});
	</script>

	<script>
		var range = new Array();
		for (i = 0; i < 288; i++) {
			if (i % 12 == 0) {
				range[i] = (i / 12) + ":00";
			} else {
				range[i] = "";
			}
		}
		range[287] = "24:00";

		var temp = new Array(${houseUse});
		var value = new Array();
		var max = Math.max.apply(null, temp[0]);
		var min = Math.min.apply(null, temp[0])/2;
		for(i=0; i<288; i++){
			value[i] = [temp[0][i]];
		}
		var options = {
			'legend' : {
				names : range
			},
			'dataset' : {
				title : 'Playing time per day',
				values : value,
				colorset : [ '#0072b2' ],
				fields : ['단위(W/5분)']
			},
			'chartDiv' : 'chart71',
			'chartType' : 'line',
			'leftOffsetValue' : 40,
			'bottomOffsetValue' : 60,
			'chartSize' : {
				width : 1100,
				height : 600
			},
			'minValue' : min,
			'maxValue' : max,
			'increment' : parseInt(max/10),
			'isGuideLineNeeded' : true
		}
		
		Nwagon.chart(options);
	</script>

	<script>
	function changeGraph(jsonObj){
		
		var range2 = new Array();
		for (i = 0; i < 288; i++) {
			if (i % 12 == 0) {
				range2[i] = (i / 12) + ":00";
			} else {
				range2[i] = "";
			}
		}
		range2[287] = "24:00";

		var temp2 = new Array(jsonObj);
		$("#cUse").text(temp2[0][temp2[0].length-1]);
		var value2 = new Array();
		var max2 = Math.max.apply(null, temp2[0]);
		var min2 = Math.min.apply(null, temp2[0])/2;
		for(i=0; i<288; i++){
			value2[i] = [temp2[0][i]];
		}
		
		var options2 = {
				'legend' : {
					names : range2
				},
				'dataset' : {
					title : 'Playing time per day',
					values : value2,
					colorset : [ '#FF0000' ],
					fields : ['단위(W/5분)']
				},
				'chartDiv' : 'chart72',
				'chartType' : 'line',
				'leftOffsetValue' : 40,
				'bottomOffsetValue' : 60,
				'chartSize' : {
					width : 1500,
					height : 600
				},
				'minValue' : min2,
				'maxValue' : max2,
				'increment' : parseInt(max2/10),
			};
			Nwagon.chart(options2);
		}
	</script>
	<script>
	var settingDate = new Date();
	settingDate.setDate(settingDate.getDate()-1); //하루 전
	$("#endDate").text(settingDate.getFullYear()+"/"+(settingDate.getMonth()+1)+"/"+settingDate.getDate()); 
	
	settingDate = new Date();
	settingDate.setDate(settingDate.getDate()); //하루 전
	$("#cDate").text(settingDate.getFullYear()+"/"+(settingDate.getMonth()+1)+"/"+settingDate.getDate());
	</script>

</body>
</html>