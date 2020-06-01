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
		
		<!-- Main Content -->
		<div class="container">
		  <div class="row">
		    <div class="col-lg-8 col-md-10 mx-auto">
		      <form method="post" action="/happyhouse/user">
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>NAME</label>
		            <input type="text" class="form-control" placeholder="NAME" name="name" value="${userInfo.name}" required data-validation-required-message="Please enter your id">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>ID</label>
					<input name="id" value="${userInfo.id }" readonly>
					(id는 수정불가합니다.)<br><br>
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>PW</label>
		            <input type="text" class="form-control" placeholder="PASSWORD" name="password" value="${userInfo.password}" required data-validation-required-message="Please enter your id">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>ADDRESS</label>
		            <input type="text" class="form-control" placeholder="ADDRESS" name="address" value="${userInfo.address}" required data-validation-required-message="Please enter your id">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>PHONE</label>
		            <input type="text" class="form-control" placeholder="PHONE" name="phone" value="${userInfo.phone}" required data-validation-required-message="Please enter your password">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <br>
		        <div id="success"></div>
		        <div class="form-group">
				<input type="submit" class="btn btn-primary" id="sendMessageButton" value="수정완료">
		        </div>
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