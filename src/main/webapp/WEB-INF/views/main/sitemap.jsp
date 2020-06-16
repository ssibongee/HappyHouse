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
		
		<div align="center">
			<table>
				<tr><td><b><a href="/happyhouse/introduce">1. 웹사이트 소개</a></b></td></tr>
				<tr><td><b><a href="/happyhouse/notice">2. 공지사항</a></b></td></tr>
				<tr><td><b><a href="/happyhouse/">3. 아파트 실거래가 검색</a></b></td></tr>
				<tr><td><b>4. 회원관리</b></td></tr>
				<c:if test="${id == null}">
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/join">회원가입</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/login">로그인</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/findPw">비밀번호 찾기</a></td></tr>
				</c:if>
				<c:if test="${id != null}">
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/user">내 정보</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/logout">로그아웃</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="/happyhouse/delete">탈퇴하기</a></td></tr>
				</c:if>
			</table>
		</div>	
		
		<div align="center">
			
		</div>
		
		 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>