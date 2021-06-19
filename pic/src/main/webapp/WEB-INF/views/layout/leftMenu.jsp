<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Nav -->
<nav id="nav">
	<ul class="links">
		<c:if test="${empty id}">
			<li><a href="/pic/tourist/selectTouristList.do">Home</a></li>
			<li><a href="/pic/user/login.do">Login</a></li>
			<li><a href="/pic/user/fwdUserJoin.do">Join</a></li>
		</c:if>
		<c:if test="${not empty id}">
			<li><a href="/pic/tourist/selectTouristList.do">Home</a></li>
			<li><a href="/pic/user/selectUserMyPageList.do">MyPage</a></li>
			<li><a href="/pic/user/logout.do">Log Out</a></li>
		</c:if>
	</ul>
</nav>