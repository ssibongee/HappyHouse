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
		
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="post-preview">
						<a href="/happyhouse/user">
							<h2>회원 정보 조회</h2>
						</a>
						<hr>
						<a href="/happyhouse/update">
							<h2>회원 정보 수정</h2>
						</a>
						<hr>
						<a href="#">
							<h2>북마크</h2>
						</a>
						<hr>
						<a href="#">
							<h2>관심 지역</h2>
						</a>
						<hr>
						<a href="/happyhouse/delete">
							<h2>회원 탈퇴</h2>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>