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
		      <p>HAPPY HOUSE 사이트는 아파트/다세대주택 별, 매매/전,월세 별 거래 내역 정보와 주택 정보 데이터를 관리하고,
				고객에게 원하는 주택 정보를 (동 별, 아파트 이름 별/ 아파트 매매, 아파트 전월세, 다세대주택 매매, 다세대주택 전월 등)할 수 있도록 하고,
				그 결과를 분석해서 화면에 표시해줍니다.</p>
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