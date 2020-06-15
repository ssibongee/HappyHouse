<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<!-- Head -->
	<%@ include file="/WEB-INF/views/head.jsp"%>
	
	<body>
		<!-- Navigation -->
		<%@ include file="/WEB-INF/views/nav.jsp"%>
		
		<!-- Page Header -->
		<%@ include file="/WEB-INF/views/pageHeader.jsp"%>
		
		<!-- Main Content -->
		<div class="container">
		  <div class="row">
		    <div class="col-lg-8 col-md-10 mx-auto">
		      <h3>HAPPY HOUSE는 고객에게 원하는 주택정보를 검색할 수 있도록 합니다.</h3>
		      <br><br>
				<h4>주택 정보 데이터 관리</h4>
				<ul>
					<li>아파트/다세대주택 별, 매매/전,월세 별 거래 내역 정보와 주택 정보 데이터를 관리</li>
				</ul>
				<br>
				<h4>주택 정보 검색</h4>
				<ul>
					<li>동 별, 아파트 이름 별/ 아파트 매매, 아파트 전월세, 다세대주택 매매, 다세대주택 전월 별 검색 가능</li>
					<li>지도를 이용하여 한눈에 보기 쉽게 검색 가능</li>
					<li>검색한 주택 주변의 상업 정보 검색 가능</li>
				</ul>
				<br>
				<h4>마이페이지</h4>
				<ul>
					<li>회원 정보 관리 - 수정, 탈퇴 등</li>
					<li>북마크를 이용하여 관심 매물 정보 쉽게 검색</li>
				</ul>
<!-- 				<hr> -->
<!-- 				<h4>사용한 기술</h4> -->
<!-- 				<div class="row"> -->
<!-- 				  <div class="col-md-4" style="border-right: solid gray;">.col-md-4</div> -->
<!-- 				  <div class="col-md-4">.col-md-4</div> -->
<!-- 				  <div class="col-md-4" style="border-left: solid gray;">.col-md-4</div> -->
<!-- 				</div> -->
		    </div>
		  </div>
		</div>
		
		<hr>
		
		<!-- Footer -->
		<%@ include file="/WEB-INF/views/footer.jsp"%>
		
		<!-- JavaScript -->
	  	<%@ include file="/WEB-INF/views/script.jsp"%>
		
	</body>
</html>