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
		
<!-- 		<div class="container" align="center"> -->
<%-- 			<c:if test="${!empty auth_msg} "> --%>
<%-- 				<p>${auth_msg }</p> --%>
<%-- 			</c:if> --%>
<!-- 			<form method="post" action="/happyhouse/changePw"> -->
<%-- 				<input type="hidden" name="id" value="${ id }"> --%>
<!-- 				<table> -->
<!-- 					<tr><td><div align="right">새로운 비밀번호 *</div></td><td><input type="password" name="password" placeholder="비밀번호"></td></tr> -->
<!-- 					<tr><td>&nbsp;&nbsp;</td></tr> -->
<!-- 					<tr><td><div align="right">비밀번호 확인 *</div></td><td><input type="password" name="chk_password" placeholder="비밀번호 확인"></td></tr> -->
<!-- 				</table> -->
<!-- 				<br> -->
<!-- 			   	<input type="submit" class="btn btn-primary" value="비밀번호 설정"> -->
<!-- 				<input type="reset" class="btn btn-primary" value="돌아가기" onClick="location.href='/happyhouse/'"> -->
<!-- 			</form> -->
<!-- 		</div> -->
		
		<div class="container">
				<h3>비밀번호 변경</h3>
				${pass_msg }
				<div class="row">
			      <div class="col-lg-8 col-md-10 mx-auto">
			        <form method="post" action="/happyhouse/changePw">
				      <input type="hidden" name="temp_id" value="${ temp_id }">
			          <div class="control-group">
			            <div class="form-group floating-label-form-group controls">
			              <label>새로운 비밀번호</label>
			              <input type="password" class="form-control" placeholder="PASSWORD" name="password1"
			              	required data-validation-required-message="Please enter your id"
			              	style="font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;">
			              <p class="help-block text-danger"></p>
			            </div>
			            <div class="form-group floating-label-form-group controls">
			              <label>비밀번호 확인</label>
			              <input type="password" class="form-control" placeholder="PASSWORD" name="password2"
			              	required data-validation-required-message="Please enter your id"
			              	style="font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;">
			              <p class="help-block text-danger"></p>
			            </div>
			          </div>
			          <button class="btn btn-primary">비밀번호 변경</button>
			          <input class="btn btn-primary" value="메인으로" onClick="location.href='/happyhouse/'">
			        </form>
			      </div>
			    </div>
			</div>
		
		 <hr>
	
	 <!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  <!-- JavaScript -->
	  <%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>