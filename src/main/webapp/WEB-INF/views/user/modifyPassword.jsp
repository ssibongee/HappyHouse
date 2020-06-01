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
			<c:if test="${!empty auth_msg} ">
				<p>${auth_msg }</p>
			</c:if>
			<form method="post" action="/happyhouse/changePw">
				<input type="hidden" name="id" value="${ id }">
				<table>
					<tr><td><div align="right">새로운 비밀번호 *</div></td><td><input type="password" name="password" placeholder="비밀번호"></td></tr>
					<tr><td>&nbsp;&nbsp;</td></tr>
					<tr><td><div align="right">비밀번호 확인 *</div></td><td><input type="password" name="chk_password" placeholder="비밀번호 확인"></td></tr>
				</table>
				<br>
			   	<input type="submit" class="btn btn-primary" value="비밀번호 설정">
				<input type="reset" class="btn btn-primary" value="돌아가기" onClick="location.href='/happyhouse/'">
			</form>
		</div>
		
		 <hr>
	
	 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>