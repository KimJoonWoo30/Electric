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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<style>
svg text {
	pointer-events: none;
}

.place-label {
	font: bold 15px sans-serif;
}

svg .province {
	fill: steelblue;
	stroke: #eee;
}

svg .province.c11 {
	fill: #ddd;
}

svg .province.c21 {
	fill: #dcd;
}

svg .province.c22 {
	fill: #cdd;
}

svg .province.c23 {
	fill: #ccd;
}

svg .province.c24 {
	fill: #cdc;
}

svg .province.c25 {
	fill: #dcc;
}

svg .province.c26 {
	fill: #ddc;
}

svg .province:hover {
	fill: orange;
}

svg text {
	font-size: 20px;
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
	
}

}
@keyframes shine {to { background-position:200%center;
	
}
}
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
						<li class="active"><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs hidden-sm">홈</span></a></li>
						<li><a href="#"><i class="fa fa-tasks" aria-hidden="true"></i><span class="hidden-xs hidden-sm">차트</span></a></li>

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
										</ul></li>
								</ul>
							</div>
						</div>
					</header>
				</div>
				<div class="user-dashboard">
					<div class="row">
						<div id="chart" class="col-md-7 col-sm-5 col-xs-12 gutter">
							<h2>의심지수</h2>
						</div>

						<div id="" class="col-md-5">
							<section class="content">
								<div class="col-md-12">
									<h2>가구 리스트</h2>
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="pull-right">
												<div class="btn-group">
													<button type="button" class="btn btn-success btn-filter" data-target="suspicion0">정상</button>
													<button type="button" class="btn btn-warning btn-filter" data-target="suspicion1">의심</button>
													<button type="button" class="btn btn-danger btn-filter" data-target="suspicion2">매우의심</button>
													<button type="button" class="btn btn-default btn-filter" data-target="all">모두</button>
												</div>
											</div>
											<div class="table-container">
												<table class="table table-filter">
													<tbody>
														<tr data-status="suspicion0">
															<td>
																<a href="/detail/GAA0001"><span>GAA0001</span></a>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">

																		<h4 class="title">
																			의심지수: 0 <span class="pull-right suspicion0">(suspicion0)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 : 1230<span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0002</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 : 880 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0003</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수: 1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 : 999<span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0004</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수: 1<span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 : 1001<span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0005</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수: 1<span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :2345 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0006</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :3237 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0007</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :1255 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0008</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :1210 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0009</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :1321 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0010</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :989 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0011</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수: 1<span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :898 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
														<tr data-status="suspicion1">
															<td>
																<span>GIA0012</span>
															</td>
															<td>
																<div class="media">
																	<div class="media-body">
																		<h4 class="title">
																			의심지수:1 <span class="pull-right suspicion1">(suspicion1)</span>
																		</h4>
																		<p class="summary">
																			실시간사용량 :790 <span class="media-meta pull-right">Febrero 13, 2016</span>
																		</p>
																	</div>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>

					</div>
				</div>
			</div>
		</div>

	</div>



	<!-- Modal -->
	<div id="add_project" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header login-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Add Project</h4>
				</div>
				<div class="modal-body">
					<input type="text" placeholder="Project Title" name="name">
					<input type="text" placeholder="Post of Post" name="mail">
					<input type="text" placeholder="Author" name="passsword">
					<textarea placeholder="Desicrption"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="cancel" data-dismiss="modal">Close</button>
					<button type="button" class="add-project" data-dismiss="modal">Save</button>
				</div>
			</div>

		</div>
	</div>

	<script>
	$(document).ready(function(){
		   $('[data-toggle="offcanvas"]').click(function(){
		       $("#navigation").toggleClass("hidden-xs");
		   });
		});

	</script>

	<script src="http://d3js.org/d3.v3.min.js"></script>
	<script>
    var width = 700,
        height = 500;

    var svg = d3.select("#chart").append("svg")
        .attr("width", width)
        .attr("height", height);

    // to preserve layer order
    var map = svg.append("g").attr("id", "map"),
        points= svg.append("g").attr("id", "cities");

    var projection = d3.geo.mercator()
        .center([126.83, 35.12])
        .scale(80000)
        .translate([width/2, height/2]);

    
    var path = d3.geo.path()
        .projection(projection);

    // draw map
    d3.json("mapjson?fileName=gwangju.json", function(error, data) {
      if (error) return console.error(error);

      map.selectAll("path")
          .data(data.features).enter()
        .append("path")
          .attr("class", "province")
          .attr("class", function(d) { return "province c" + d.properties.code; })
          .attr("d", path);
    });

    // draw cities
    d3.csv("mapjson?fileName=cities.csv", function(error, data) {
      points.selectAll(".place-label")
          .data(data)
        .enter().append("text")
          .attr("class", "place-label")
          .attr("transform", function(d) { console.log(projection([d.lon, d.lat])); return "translate(" + projection([d.lon, d.lat]) + ")"; })
          .attr("dy", ".5em")
          .text(function(d) { return d.name; });
    });
    </script>

	<script type="text/javascript">
    $("#chart").on("click", ".province",function () {
    	alert("clicked..")
    	var district = $(this);
    	//해당되는 정보를 오른쪽 사이드바에 표시한다.
	});
    </script>
	</script>
</body>
</html>