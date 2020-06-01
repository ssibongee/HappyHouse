<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>행복한 우리집 | 사이트 맵</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- Bootstrap core CSS -->
		<link href="../res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template -->
		<link href="../res/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
		
		<!-- Custom styles for this template -->
		<link href="../res/css/clean-blog.min.css" rel="stylesheet">
	
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
		<header class="masthead" style="background-image: url('../res/img/apartment.jpg')">
		  <div class="overlay"></div>
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <div class="page-heading">
		          <h1>SITE MAP</h1>
		          <span class="subheading">HAPPY HOUSE의 사이트 맵입니다.</span>
		          <div class="container" align="center">
							<br>
							<c:if test="${ !empty msg }">
								<b>${ msg }</b>
								<br>
							</c:if>
							<c:if test="${userInfo != null}">
								<table class="table">
									<tr class="table-warning">
										<td align="center" height="22" style="color:black;">&nbsp;&nbsp; <b>${userInfo.id
												}(${userInfo.name})님,
												반갑습니다!</b>
										</td>
										<td align="center" height="22">&nbsp;&nbsp; <b><a href="${ root }/logout.user">로그아웃</a></b>
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
		
		<div align="center">
			<table>
				<tr><td><b><a href="${ root }/main/introduce.jsp">1. 웹사이트 소개</a></b></td></tr>
				<tr><td><b><a href="${ root }/list.notice">2. 공지사항</a></b></td></tr>
				<tr><td><b><a href="${ root }/list.main">3. 아파트 실거래가 검색</a></b></td></tr>
				<tr><td><b>4. 회원관리</b></td></tr>
				<c:if test="${userInfo == null}">
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/join.user">회원가입</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/login.user">로그인</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/user/passwordSearch.jsp">비밀번호 찾기</a></td></tr>
				</c:if>
				<c:if test="${userInfo != null}">
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/search.user">내 정보</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/logout.user">로그아웃</a></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;>&nbsp;<a href="${ root }/delete.user">탈퇴하기</a></td></tr>
				</c:if>
			</table>
		</div>	
		
		 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>