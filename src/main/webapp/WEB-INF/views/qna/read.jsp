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
			<tbody>
				<tr>
					<td>번호</td>
					<td>${qna.qnaNo}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>${qna.qnaTitle}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>${qna.qnaContent}</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${qna.qnaUserid}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${qna.qnaDatetime}</td>
				</tr>
				<tr>
					<td>답글</td>
					<td>${qna.replyContent}</td>
				</tr>
				<tr>
					<td>답글-작성일</td>
					<td>${qna.replyDatetime}</td>
				</tr>
				<tr>
					<td>답글-작성자</td>
					<td>${qna.replyUserid}</td>
				</tr>
			</tbody>
		</table>
		<c:if test="${qna.qnaUserid eq  sessionScope.id }">
			<a href="/happyhouse/qna/update/${qna.qnaNo }">수정하기</a>
			<a href="/happyhouse/qna/delete/${qna.qnaNo }">삭제하기</a>
		</c:if>
		<c:if test="${sessionScope.id eq 'admin'}">
			<c:choose>
				<c:when test="${ empty  qna.replyContent }">
					<a href="/happyhouse/qna/update/${qna.qnaNo }">답글달기</a>
				</c:when>
				<c:otherwise>
					<a href="/happyhouse/qna/update/${qna.qnaNo }">답글 수정하기</a>
				</c:otherwise>
			</c:choose>
				<a href="/happyhouse/qna/reply/${qna.qnaNo }">답글삭제</a>
		</c:if>
	</div>

	<hr>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>