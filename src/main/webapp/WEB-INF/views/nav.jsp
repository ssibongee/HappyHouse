<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="/happyhouse/">HAPPY HOUSE</a>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="/happyhouse/">메인 화면</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/happyhouse/introduce">사이트 소개</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/happyhouse/notice">공지사항</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/happyhouse/sitemap">사이트맵</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/happyhouse/news">관련기사</a>
				</li>
				
				<c:if test="${!empty id}">
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/myPage">마이페이지</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/qna">Q&A</a>
					</li>
				</c:if>
			</ul>
		</div>
			<hr>
	</div>
</nav>