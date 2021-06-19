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
		<!--[if lte IE 8]><script src="/pic/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/pic/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="/pic/assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="/pic/assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="landing">

		<!-- Header -->
		<jsp:include page="../layout/header.jsp" flush="true"></jsp:include>
		<!-- // Header -->

		<!--  leftMenu -->
		<jsp:include page="../layout/leftMenu.jsp" flush="true"></jsp:include>
		<!--  // leftMenu -->

		<!-- Banner -->
		<section id="banner">
			<h2>P.I.C.</h2>
			<p>Play In Cheonan</p>
		</section>

		<section id="one" class="wrapper style1">
			<div class="inner">
				<h3>PLAY IN CHEONAN</h3>
				<c:forEach items="${touristList}" var="result" varStatus="status">
					<article class="feature left">
						<span class="image">
							<img src="http://localhost:8080/touristImages/${result.tourist_picture_uid}.${result.file_ext}" alt="" style="width:576px; height:358px;"/>
						</span>
						<div class="content">
							<h6>${result.category_name}</h6>
							<h2>${result.tourist_name}</h2>
							<p>${result.tourist_address}</p>
							<ul class="actions">
								<c:if test="${not empty id}">
									<li>
										<a href="javascript:void(0);" id="PICOn_${result.tourist_idx}" class="button alt" onclick="javascript:fn_pic('Y', '${result.tourist_idx}');" <c:if test="${result.pic_yn eq 'Y'}">style="display:none;"</c:if>>P.I.C</a>
										<a href="javascript:void(0);" id="PICOff_${result.tourist_idx}" class="button special" onclick="javascript:fn_pic('N', '${result.tourist_idx}');" <c:if test="${result.pic_yn eq 'N'}">style="display:none;"</c:if>>P.I.C off</a>
									</li>
								</c:if>
							</ul>
						</div>
					</article>
				</c:forEach>
			</div>
		</section>


		<!-- Footer -->
		<jsp:include page="../layout/footer.jsp" flush="true"></jsp:include>
		<!-- //Footer -->

		<!-- Scripts -->
		<script src="/pic/assets/js/jquery.min.js"></script>
		<script src="/pic/assets/js/skel.min.js"></script>
		<script src="/pic/assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="/pic/assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="/pic/assets/js/main.js"></script>
		<script>
			function fn_pic(pic_yn, tourist_idx){

				$.ajax({
				    url: "/pic/tourist/updateTouristPIC.do",
				    method: "GET",
				    async : true,
				    data : {"pic_yn" : pic_yn, "tourist_idx" : tourist_idx, "user_idx" : "${touristVO.user_idx}"},
				    success : function (res) {
				    	if(pic_yn == "Y"){
							$("#PICOn_"+tourist_idx).hide();
							$("#PICOff_"+tourist_idx).show();
						}else if(pic_yn == "N"){
							$("#PICOn_"+tourist_idx).show();
							$("#PICOff_"+tourist_idx).hide();
						}
				    },
				    error: function (xhr) {
				    }
				});
				
			}
		</script>
	</body>
</html>