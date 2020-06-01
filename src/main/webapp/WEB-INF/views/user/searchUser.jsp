<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<!-- header -->
	<%@ include file="/WEB-INF/views/head.jsp"%>
	
	<body>
		<!-- Navigation -->
		<%@ include file="/WEB-INF/views/nav.jsp"%>
		
		<!-- Page Header -->
		<%@ include file="/WEB-INF/views/pageHeader.jsp"%>
		
		<div class="container" align="center">
			<h2>내 정보 조회</h2>
			${msg }
			<table class="table">
				<tr>
					<td width=100 align=center class="warning" height="22"><b>아이디</b></td>
					<td width=490 style="padding-left:10">&nbsp;${userInfo.id }</td>
				</tr>
				<tr>
					<td width=100 align=center class="warning" height="22"><b>비밀번호</b></td>
					<td width=490  style="padding-left:10">&nbsp;${userInfo.password }</td>
				</tr>
				<tr>
					<td width=100 align=center class="warning" height="22"><b>이름</b></td>
					<td width=490 style="padding-left:10">&nbsp;${userInfo.name }</td>
				</tr>
				<tr>
					<td width=100 align=center class="warning" height="22"><b>주소</b></td>
					<td width=490 style="padding-left:10">&nbsp;${userInfo.address }</td>
				</tr>		  
				<tr>
					<td width=100 align=center class="warning" height="22"><b>전화번호</b></td>
					<td width=490 style="padding-left:10">&nbsp;${userInfo.phone }</td>
				</tr>		  
			</table>
			<br>
			<a href="/happyhouse/update" class="btn btn-primary">수정</a>
		</div>
		
		<!-- Footer -->
	  <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>	
</html>