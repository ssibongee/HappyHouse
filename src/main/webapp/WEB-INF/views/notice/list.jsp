<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<table class="table">
			<tr class="warning">
				<td width=100 height="22"><b>번호</b></td>
				<td width=100 height="22"><b>제목</b></td>
				<td width=100 height="22"><b>조회수</b></td>
				<td width=100 height="22"></td>
			</tr>
			<c:if test="${list != null }">
				<c:forEach var="n" items="${list }">
					<tr>
						<td width=490 style="padding-left: 10">&nbsp;${n.num }</td>
						<td width=490 style="padding-left: 10">&nbsp;${n.title }</td>
						<td width=490 style="padding-left: 10">&nbsp;${n.count }</td>
						<td width=490 style="padding-left: 10">&nbsp;<a
							href="/happyhouse/notice/${ n.num }">조회</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<c:if test="${list == null }">
				공지사항이 없습니다!
		</c:if>
		<br>
		<c:if test="${ sessionScope.id =='admin'}">
			<!-- 				<a href="regForm.notice">공지 등록</a> -->
			<form action="/happyhouse/notice/insert" method="get">
				<button type="submit" class="btn btn-primary" id="sendMessageButton">공지
					등록</button>
			</form>
		</c:if>
	</div>


	<hr>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>