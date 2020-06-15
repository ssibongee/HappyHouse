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
				<td width=100 height="22"><b>아파트 매매 관련 뉴스</b></td>
			</tr>
			<c:if test="${list != null }">
				<c:forEach var="n" items="${list }">
					<tr>
						<td width=490 style="padding-left: 10"><h3><a href="${ n.link }"
							target="_blank">&nbsp;${n.title }</a></h3>
							<br> ${ n.pubDate }</td>
					</tr>
					<tr>
						<td width=490 style="padding-left: 10">&nbsp;${n.description }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<c:if test="${list == null }">
				관련 기사가  없습니다!
		</c:if>
		<br>
	</div>


	<hr>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>