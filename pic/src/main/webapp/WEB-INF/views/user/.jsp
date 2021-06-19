<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Play In Cheonan</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="../assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="../assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="../assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="landing">

		<!-- Header -->
			<header id="header" class="alt">
				<h1><a href="index.html">Play In Cheonan</a></h1>
				<a href="#nav">Menu</a>
			</header>

		<!--  leftMenu -->
		<jsp:include page="../layout/leftMenu.jsp" flush="true"></jsp:include>
		<!--  // leftMenu -->

		<!-- Banner -->
			<section id="banner">
<!-- 				<i class="icon fa-diamond"></i> -->
				<h2>P.I.C.</h2>
				<p>Play In Cheonan</p>
<!-- 				<ul class="actions"> -->
<!-- 					<li><a href="#" class="button big special">Learn More</a></li> -->
<!-- 				</ul> -->
			</section>

		<!-- One -->
			<section id="one" class="wrapper style1">
				<div class="inner">
					<h3>TOURIST</h3>
					<article class="feature left">
						<span class="image">
<!-- 							<img src="../images/pic01.jpg" alt="" /> -->
							<img src="https://www.crezone.net/wp-content/uploads/2019/11/%EC%95%84%EB%9D%BC%EB%A6%AC%EC%98%A4%EA%B0%A4%EB%9F%AC%EB%A6%AC.jpg" alt="" style="width:576px; height:358px;"/>
						</span>
						<div class="content">
							<h2>아라리오 갤러리</h2>
							<p>충남 천안시 동남구 만남로 43</p>
							<ul class="actions">
								<li>
									<a href="#" class="button alt">P.I.C</a>
									<a href="#" class="button special">P.I.C off</a>
								</li>
							</ul>
						</div>
					</article>
<!-- 					<article class="feature right"> -->
<!-- 						<span class="image"><img src="../images/pic02.jpg" alt="" /></span> -->
<!-- 						<div class="content"> -->
<!-- 							<h2>Integer vitae libero acrisus egestas placerat  sollicitudin</h2> -->
<!-- 							<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est.</p> -->
<!-- 							<ul class="actions"> -->
<!-- 								<li> -->
<!-- 									<a href="#" class="button alt">More</a> -->
<!-- 								</li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</article> -->
				</div>
			</section>

		<!-- Two -->
<!-- 			<section id="two" class="wrapper special"> -->
<!-- 				<div class="inner"> -->
<!-- 					<header class="major narrow"> -->
<!-- 						<h2>Aliquam Blandit Mauris</h2> -->
<!-- 						<p>Ipsum dolor tempus commodo turpis adipiscing Tempor placerat sed amet accumsan</p> -->
<!-- 					</header> -->
<!-- 					<div class="image-grid"> -->
<!-- 						<a href="#" class="image"><img src="../images/pic03.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic04.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic05.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic06.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic07.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic08.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic09.jpg" alt="" /></a> -->
<!-- 						<a href="#" class="image"><img src="../images/pic10.jpg" alt="" /></a> -->
<!-- 					</div> -->
<!-- 					<ul class="actions"> -->
<!-- 						<li><a href="#" class="button big alt">Tempus Aliquam</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</section> -->

		<!-- Three -->
<!-- 			<section id="three" class="wrapper style3 special"> -->
<!-- 				<div class="inner"> -->
<!-- 					<header class="major narrow	"> -->
<!-- 						<h2>Magna sed consequat tempus</h2> -->
<!-- 						<p>Ipsum dolor tempus commodo turpis adipiscing Tempor placerat sed amet accumsan</p> -->
<!-- 					</header> -->
<!-- 					<ul class="actions"> -->
<!-- 						<li><a href="#" class="button big alt">Magna feugiat</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</section> -->

		<!-- Four -->
<!-- 			<section id="four" class="wrapper style2 special"> -->
<!-- 				<div class="inner"> -->
<!-- 					<header class="major narrow"> -->
<!-- 						<h2>Get in touch</h2> -->
<!-- 						<p>Ipsum dolor tempus commodo adipiscing</p> -->
<!-- 					</header> -->
<%-- 					<form action="#" method="POST"> --%>
<!-- 						<div class="container 75%"> -->
<!-- 							<div class="row uniform 50%"> -->
<!-- 								<div class="6u 12u$(xsmall)"> -->
<!-- 									<input name="name" placeholder="Name" type="text" /> -->
<!-- 								</div> -->
<!-- 								<div class="6u$ 12u$(xsmall)"> -->
<!-- 									<input name="email" placeholder="Email" type="email" /> -->
<!-- 								</div> -->
<!-- 								<div class="12u$"> -->
<!-- 									<textarea name="message" placeholder="Message" rows="4"></textarea> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<ul class="actions"> -->
<!-- 							<li><input type="submit" class="special" value="Submit" /></li> -->
<!-- 							<li><input type="reset" class="alt" value="Reset" /></li> -->
<!-- 						</ul> -->
<%-- 					</form> --%>
<!-- 				</div> -->
<!-- 			</section> -->

		<!-- Footer -->
			<footer id="footer">
<!-- 				<div class="inner"> -->
<!-- 					<ul class="icons"> -->
<!-- 						<li><a href="#" class="icon fa-facebook"> -->
<!-- 							<span class="label">Facebook</span> -->
<!-- 						</a></li> -->
<!-- 						<li><a href="#" class="icon fa-twitter"> -->
<!-- 							<span class="label">Twitter</span> -->
<!-- 						</a></li> -->
<!-- 						<li><a href="#" class="icon fa-instagram"> -->
<!-- 							<span class="label">Instagram</span> -->
<!-- 						</a></li> -->
<!-- 						<li><a href="#" class="icon fa-linkedin"> -->
<!-- 							<span class="label">LinkedIn</span> -->
<!-- 						</a></li> -->
<!-- 					</ul> -->
<!-- 					<ul class="copyright"> -->
<!-- 						<li>&copy; Untitled.</li> -->
<!-- 						<li>Images: <a href="http://unsplash.com">Unsplash</a>.</li> -->
<!-- 						<li>Design: <a href="http://templated.co">TEMPLATED</a>.</li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
			</footer>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="../assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assets/js/main.js"></script>

	</body>
</html>