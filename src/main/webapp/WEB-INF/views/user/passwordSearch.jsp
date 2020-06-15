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

		<script>
			$(document).ready(function(){
				if(${auth==false}){
					alert("회원정보를 확인해주세요!!!");
				}
			});
		</script>
		
		<div class="container">
			<h3>본인 확인</h3>
			<p>본인 확인을 위해 아래 내용을 입력해주세요</p>
			<div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <form method="post" action="/happyhouse/findPw">
		          <div class="control-group">
		            <div class="form-group floating-label-form-group controls">
		              <label>이름</label>
		              <input type="text" class="form-control" placeholder="이름" name="name"
		              	required data-validation-required-message="Please enter your name">
		              <p class="help-block text-danger"></p>
		            </div>
		            <div class="form-group floating-label-form-group controls">
		              <label>아이디</label>
		              <input type="text" class="form-control" placeholder="아이디" name="id"
		              	required data-validation-required-message="Please enter your name">
		              <p class="help-block text-danger"></p>
		            </div>
		            <div class="form-group floating-label-form-group controls">
		              <label>전화번호</label>
		              <input type="text" class="form-control" placeholder="전화번호" name="phone"
		              	required data-validation-required-message="Please enter your name">
		              <p class="help-block text-danger"></p>
		            </div>
		          </div>
		          <button class="btn btn-primary">본인 인증</button>
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