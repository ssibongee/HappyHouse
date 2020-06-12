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
        
		<div align="center" class="container">
			<h1>아파트 거래 정보</h1>
			<table class="table">
				<tr><th rowspan = "10"><img src="${ root }/img/${house.img}" width="300" height="300"/></th><th></th><th></th></tr>
				<tr><td><strong>주택명</strong></td><td>${ house.aptName }</td></tr>
				<tr><td><strong>거래금액</strong></td><td>${ house.dealAmount }</td></tr>
				<tr><td><strong>건축연도</strong></td><td>${ house.buildYear }</td></tr>
				<tr><td><strong>전용면적</strong></td><td>${ house.area }</td></tr>
				<tr><td><strong>거래일</strong></td><td>${ house.dealDay }</td></tr>
				<tr><td><strong>법정동</strong></td><td>${ house.dong }</td></tr>
				<tr><td><strong>지번</strong></td><td>${ house.jibun }</td></tr>
			</table>
<%-- 			<a href="${ root }/list.main">돌아가기</a> --%>
<!-- 			<form class="form-group" action="/happyhouse/" method="get"> -->
<!-- 				<button type="submit" class="btn btn-primary">돌아가기</button> -->
<!-- 			</form> -->
			<button onclick="window.history.go(-1)" class="btn btn-primary">돌아가기</button>
		</div>
		
		 <hr>
	 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	  
	</body>
</html>