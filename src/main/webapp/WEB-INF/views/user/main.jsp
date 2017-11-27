<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>
<!-- holder.js link -->
<script>
   $(document).ready(function() {
      $('#myCarousel').carousel('cycle');
      $('#myCarousel2').carousel('cycle');
   });
</script>
<style>
h2 {
   color : #0099cc;
}
.wrapper {
   display: block;
   position: absolute;
   top: 100%;
   left: 50%;
   -webkit-transform: translate(-50%, -50%);
   transform: translate(-50%, -50%);
}

.button {
   padding: 0.75em 2em;
   text-align: center;
   text-decoration: none;
   color: #2194E0;
   border: 2px solid #2194E0;
   font-size: 24px;
   display: inline-block;
   border-radius: 0.3em;
   -webkit-transition: all 0.2s ease-in-out;
   transition: all 0.2s ease-in-out;
   position: relative;
   overflow: hidden;
}

.button:before {
   content: "";
   background-color: rgba(255, 255, 255, 0.5);
   height: 100%;
   width: 3em;
   display: block;
   position: absolute;
   top: 0;
   left: -4.5em;
   -webkit-transform: skewX(-45deg) translateX(0);
   transform: skewX(-45deg) translateX(0);
   -webkit-transition: none;
   transition: none;
}

.button:hover {
   background-color: #2194E0;
   color: #fff;
   border-bottom: 4px solid #1977b5;
}

.button:hover:before {
   -webkit-transform: skewX(-45deg) translateX(13.5em);
   transform: skewX(-45deg) translateX(13.5em);
   -webkit-transition: all 0.5s ease-in-out;
   transition: all 0.5s ease-in-out;
}
</style>
</head>
<body>
   <div class="container">
      <h2>E-CHACHIN</h2>
      <hr>
      <div id="myCarousel" class="carousel slide" data-ride="carousel"
         data-interval="3000">
         <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
         </ol>
         <div class="carousel-inner" role="listbox">
            <div class="item active">
               <img src="KDN.jpg">
            </div>
            <div class="item">
               <img src="KDN.jpg">
            </div>
            <div class="item">
               <img src="KDN.jpg">
            </div>
         </div>
      </div>
      <hr>
   </div>
   <div class="wrapper">
      <a href="#" class="button">Login</a>
   </div>
</body>
</html>