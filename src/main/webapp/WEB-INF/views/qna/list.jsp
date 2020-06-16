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
				<td width=100 height="22"><b>작성자</b></td>
				<td width=100 height="22"><b>답변현황</b></td>
			</tr>
			<c:if test="${list != null }">
				<c:forEach var="n" items="${list }">
					<tr>
						<td width=100 style="padding-left: 10">&nbsp;${n.qnaNo }</td>
						<td width=600 style="padding-left: 10">&nbsp;<a href="/happyhouse/qna/${n.qnaNo}">${n.qnaTitle }</a></td>
						<td width=150 style="padding-left: 10">&nbsp;${n.qnaUserid }</td>
						<td width=150 style="padding-left: 10">&nbsp;
							<c:if test="${not empty n.replyUserid }">
							답변완료
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<c:if test="${list == null }">
				QnA 목록이  없습니다!
		</c:if>
		<br>
		<a href="/happyhouse/qna/insert">등록</a>
	</div>

	<hr>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>