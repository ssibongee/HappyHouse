<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>행복한 우리집  | 아파트 거래 정보</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- Bootstrap core CSS -->
		<link href="res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template -->
		<link href="res/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
		
		<!-- Custom styles for this template -->
		<link href="res/css/clean-blog.min.css" rel="stylesheet">
		
	</head>
	<body>
		<!-- Navigation -->
		<%@ include file="/WEB-INF/views/nav.jsp"%>
<!-- 		<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav"> -->
<!-- 		  <div class="container"> -->
<!-- 		    <a class="navbar-brand" href="/happyhouse/list.main">HAPPY HOUSE</a> -->
<!-- 		    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> -->
<!-- 		      Menu -->
<!-- 		      <i class="fas fa-bars"></i> -->
<!-- 		    </button> -->
<!-- 		    <div class="collapse navbar-collapse" id="navbarResponsive"> -->
<!-- 		      <ul class="navbar-nav ml-auto"> -->
<!-- 		        <li class="nav-item"> -->
<!-- 		          <a class="nav-link" href="/happyhouse/list.main">메인 화면</a> -->
<!-- 		        </li> -->
<!-- 		        <li class="nav-item"> -->
<%-- 		          <a class="nav-link" href="${ root }/main/introduce.jsp">사이트 소개</a> --%>
<!-- 		        </li> -->
<!-- 		        <li class="nav-item"> -->
<%-- 		          <a class="nav-link" href="${ root }/list.notice">공지사항</a> --%>
<!-- 		        </li> -->
<!-- 		        <li class="nav-item"> -->
<%-- 		          <a class="nav-link" href="${ root }/main/sitemap.jsp">사이트맵</a> --%>
<!-- 		        </li> -->
<!-- 		      </ul> -->
<!-- 		    </div> -->
<!-- 		  </div> -->
<!-- 		</nav> -->
		
		<!-- Page Header -->
		<header class="masthead" style="background-image: url('res/img/apartment.jpg')">
		  <div class="overlay"></div>
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <div class="page-heading">
<!-- 					<span class="login"> -->
<!-- 					  <a class="nav-link" href="#">로그인</a> -->
<!-- 					  <a class="nav-link" href="#">회원가입</a> -->
<!-- 					</span> -->
		          <h1>상세 페이지</h1>
		          <span class="subheading">상세 페이지 입니다.</span>
    			     <div class="container" align="center">
						<br>
						<c:if test="${ !empty msg }">
							<b>${ msg }</b>
							<br>
						</c:if>
						<c:if test="${userInfo == null}">
							<table class="table">
								<tr class="table-warning">
									<td height="22" style="color:black;" align="center">&nbsp;&nbsp; <b><a href="join.user">회원가입</a></b>
									</td>
									<td height="22" align="center">&nbsp;&nbsp; <b><a href="login.user">로그인</a></b>
									</td>
									<td height="22" align="center">&nbsp;&nbsp; <b><a href="${ root }/user/passwordSearch.jsp">비밀번호
												찾기</a></b>
									</td>
								</tr>
							</table>
						</c:if>
						<c:if test="${userInfo != null}">
							<table class="table">
								<tr class="table-warning">
									<td height="22" style="color:black;">&nbsp;&nbsp; <b>${userInfo.id }(${userInfo.name})님,
											반갑습니다!</b>
									</td>
									<td height="22">&nbsp;&nbsp; <b><a href="logout.user">로그아웃</a></b>
									</td>
									<td height="22">&nbsp;&nbsp; <b><a href="search.user">회원정보</a></b>
									</td>
									<td height="22">&nbsp;&nbsp; <b><a href="delete.user">탈퇴하기</a></b>
									</td>
								</tr>
							</table>
						</c:if>
			        </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</header>
        
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
			<form class="form-group" action="/happyhouse/" method="get">
				<button type="submit" class="btn btn-primary">돌아가기</button>
			</form>
		</div>
		
		 <hr>
	
	 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	  
	</body>
</html>