<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>행복한 우리집 | 회원정보 삭제 성공</title>
		
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
		<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		  <div class="container">
		    <a class="navbar-brand" href="/happyhouse/list.main">HAPPY HOUSE</a>
		    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		      Menu
		      <i class="fas fa-bars"></i>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarResponsive">
		      <ul class="navbar-nav ml-auto">
		        <li class="nav-item">
		          <a class="nav-link" href="/happyhouse/list.main">메인 화면</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/main/introduce.jsp">사이트 소개</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/list.notice">공지사항</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/main/sitemap.jsp">사이트맵</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<!-- Page Header -->
		<header class="masthead" style="background-image: url('res/img/apartment.jpg')">
		  <div class="overlay"></div>
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <div class="page-heading">
		          <h1>JOIN</h1>
		          <span class="subheading">회원가입 페이지입니다.</span>
		        </div>
		      </div>
		    </div>
		  </div>
		</header>
		
		<div class="container" align="center">
			<form method="post" action="list.main">
				<h2>회원 정보를 삭제하였습니다.</h2>
				<input type="submit" class="btn btn-primary"  value="메인으로 돌아가기">
			</form>
		</div>
		
		<hr>
	
	  <!-- Footer -->
	  <%@ include file="/main/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/main/script.jsp"%>
	</body>
</html>