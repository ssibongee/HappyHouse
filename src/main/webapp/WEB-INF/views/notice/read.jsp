<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%-- 		<jsp:include page="/user/loginCheck.jsp" /> --%>
		 	<br><br>
			<table class="table">
				<tr>
					<td align="center" class="table-success"><b>번호</b></td>
					<td align=center height="22">${notice.num }</td>
				</tr>
				<tr>					
					<td align=center class="table-success"><b>제목</b></td>
					<td width=100 align=center bgcolor="ffffff" height="22">${notice.title }</td>
				</tr>
				<tr>
					<td width=100 align=center class="table-success"><b>조회수</b></td>
					<td width=100 align=center bgcolor="ffffff" height="22">${notice.count }</td>
				</tr>
				<tr>
					<td width=100 align=center class="table-success"><b>작성 날짜</b></td>
					<td width=100 align=center bgcolor="ffffff" height="22">${notice.regtime }</td>
				</tr>
			</table>
			<table class="table">
				<tr class="table-success">
					<td width=100 align=center bgcolor="b3d9ff" height="22"><b>내용</b></td>
				</tr>
				<tr>
					<td width=100 align=center bgcolor="ffffff">${notice.content }</td>
				</tr>
			</table>
			<br>
			<form action="list.notice" method="post">
				<button type="submit" class="btn btn-primary" id="sendMessageButton">확인</button>
			</form>
<!-- 			<a href="list.notice">확인</a><br><br> -->
			<br><br>
			<c:if test="${user.id == 'admin' }">
				<a href="updateForm.notice?num=${notice.num }">수정하기</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="delete.notice?num=${notice.num }">삭제하기</a>
			</c:if>
		</div> 
		
      
   <hr>
   
     <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
   
     <!-- JavaScript -->
     <%@ include file="/WEB-INF/views/script.jsp"%>
   </body>
</html>