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
				<p>Join</p>
			</section>

			<section id="main" class="wrapper">
				<div class="container">
				<section style="width:50%; margin-left: auto; margin-right: auto;">
				
				<h3>Join</h3>
					<form id="insertForm" name="insertForm" method="post">
						<div class="row uniform 50%">
							<div class="12u$">
								<input type="text" name="id" id="id" value="" placeholder="Please Input Your ID" maxlength="20"/>
							</div>
							<div class="12u$">
								<input type="password" name="pw" id="pw" value="" placeholder="Please Input Your Password" maxlength="20"/>
							</div>
							<div class="12u$">
								<input type="text" name="user_name" id="user_name" value="" placeholder="Please Input Your Name" maxlength="20"/>
							</div>
							<div class="12u$">
								<ul class="actions">
									<li><input type="button" value="Join" class="special" onclick="javascript:fn_idDuplicationCheck();"/></li>
									<li><input type="button" value="Cancle" onclick="javascript:history.back();"/></li>
								</ul>
							</div>
						</div>
					</form>
				</section>
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
				function fn_join(){
					var f = document.insertForm;
					f.action = "/pic/user/insertUser.do";
					f.submit();
				}
				
				function fn_idDuplicationCheck(){
					var f = document.insertForm;

					if(f.id.value == ""){
						alert("required id");
						return;
					}else if(f.pw.value == ""){
						alert("required pw");
						return;
					}else if(f.user_name.value == ""){
						alert("required name");
						return;
					}
					
					$.ajax({
					    url: "/pic/user/selectUserDuplicationCheck.do",
					    method: "GET",
					    async : true,
					    data : {"id" : f.id.value},
					    success : function (result) {
					    	if(result == "Y"){
								alert("ID Duplication");
								f.id.focus();
								f.pw.value = "";
							}else if(result == "N"){
					    		fn_join();
							}
					    },
					    error: function (xhr) {
					    }
					});
				}
			</script>
	</body>
</html>