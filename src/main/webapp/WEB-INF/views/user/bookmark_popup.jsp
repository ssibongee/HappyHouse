<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
	<%@ include file="/WEB-INF/views/head.jsp"%>
	
	<!-- Main -->
	<div align="center">
	
		<table class="table" style="width: 80%;">
			<tr class="warning">
				<td width=100 height="22"><b>번호</b></td>
				<td width=100 height="22"><b>법정동</b></td>
				<td width=100 height="22"><b>아파트 이름</b></td>
			</tr>
			<c:if test="${list != null }">
				<c:forEach var="bookmark" items="${list}">
					<tr>
						<td>&nbsp;${bookmark.no }</td>
						<td>&nbsp;${bookmark.dong }</td>
						<td>&nbsp;${bookmark.aptName}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		
		<c:if test="${list == null }">
				북마크를 추가하세요!
		</c:if>
	</div>