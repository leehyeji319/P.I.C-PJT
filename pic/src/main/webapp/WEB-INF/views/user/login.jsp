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
			<p>Login</p>
		</section>

		<!-- One -->
		<section id="main" class="wrapper">
			<div class="container">
			<section style="width:50%; margin-left: auto; margin-right: auto;">
			
			<h3>Login</h3>
				<form id="loginForm" name="loginForm" method="post">
					<div class="row uniform 50%">
						<div class="12u$">
							<input type="text" name="id" id="id" value="" placeholder="Please Input Your ID" maxlength="20"/>
						</div>
						<div class="12u$">
							<input type="password" name="pw" id="pw" value="" placeholder="Please Input Your Password" maxlength="20" onkeyup="javascript:fn_keyEvent();"/>
						</div>
						<div class="12u$">
							<ul class="actions">
								<li><input type="button" value="Login" class="special" onclick="javascript:fn_login();"/></li>
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
			function fn_login(){
				$.ajax({
				    url: "/pic/user/loginCheck.do",
				    method: "POST",
				    async : true,
				    data : $("#loginForm").serialize(),
				    success : function (result) {
				    	if(result == "Y"){
							var f = document.loginForm;
							f.action = "/pic/user/loginProc.do";
							f.submit();
				    	}else{
				    		alert("로그인 정보가 잘못되었습니다.");
				    		$("#pw").val("");
				    	}
				    },
				    error: function (xhr) {
				    }
				});
				
			}
			
			function fn_keyEvent() {
				//Enter
		        if (window.event.keyCode == 13) {
		        	fn_login();
		        }
			}
		</script>
	</body>
</html>