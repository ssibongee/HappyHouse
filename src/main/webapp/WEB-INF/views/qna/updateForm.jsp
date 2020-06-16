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
		<form method="post" action="/happyhouse/qna/update">
			<table class="table">
				<tbody>
					<tr>
						<td>번호</td>
						<td>${qna.qnaNo}</td>
						<input type="hidden" name="qnaNo" value="${qna.qnaNo }">
					</tr>
					<tr>
						<td>제목</td>
						<c:choose>
							<c:when test="${sessionScope.id == 'admin' }">
								<td name="qnaTitle">${qna.qnaTitle}</td>
								<input type="hidden" name="qnaTitle" value="${qna.qnaTitle}">
							</c:when>
							<c:otherwise>
								<td><input type="text" value="${qna.qnaTitle}"
									name="qnaTitle"></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>내용</td>
						<c:choose>
							<c:when test="${sessionScope.id == 'admin' }">
								<td>${qna.qnaContent}</td>
								<input type="hidden" name="qnaContent"
									value="${ qna.qnaContent }">
							</c:when>
							<c:otherwise>
								<td><textarea cols="50" rows="10" name="qnaContent">${qna.qnaContent}</textarea></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>작성자</td>
						<td name="qnaUserid">${qna.qnaUserid}</td>
						<input type="hidden" name="qnaUserid" value="${ qna.qnaUserid }">
					</tr>
					<tr>
						<td>작성일</td>
						<td name="qnaDatetime">${qna.qnaDatetime}</td>
						<input type="hidden" name="qnaDatetime"
							value="${ qna.qnaDatetime }">
					</tr>
					<tr>
						<td>답글</td>
						<c:choose>
							<c:when test="${sessionScope.id != 'admin' }">
								<td name="replyContent">${qna.replyContent}</td>
								<input type="hidden" name="replyContent"
									value="${ qna.replyContent }">
							</c:when>
							<c:otherwise>
								<td><textarea cols="50" rows="10" name="replyContent">${qna.replyContent}</textarea></td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td>답글-작성일</td>
						<td>${qna.replyDatetime}</td>
						<input type="hidden" name="replyDatetime"
							value="${ qna.replyDatetime }">
					</tr>
					<tr>
						<td>답글-작성자</td>
						<td>${qna.replyUserid}</td>
						<c:choose>
							<c:when test="${ sessionScope.id == 'admin'}">
								<input type="hidden" name="replyUserid"value="admin">
							</c:when>
							<c:otherwise>
								<input type="hidden" name="replyUserid"value="${ qna.replyUserid }">
							</c:otherwise>
						</c:choose>
					</tr>
				</tbody>
			</table>
			<!-- 작성자면 수정완료 -->
			<button type="submit">등록하기</button>
			<!-- 운영자면 답변등록-->
		</form>
	</div>

	<hr>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>