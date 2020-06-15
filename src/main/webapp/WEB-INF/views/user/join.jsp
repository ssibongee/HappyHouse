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
		
		<!-- Main Content -->
	  <div class="container">
	    <div class="row">
	      <div class="col-lg-8 col-md-10 mx-auto">
	        <form method="post" action="/happyhouse/join">
	          <div class="control-group">
	            <div class="form-group floating-label-form-group controls">
	              <label>NAME</label>
	              <input type="text" class="form-control" placeholder="NAME" value="${check.name}" name="name" required data-validation-required-message="Please enter your id">
	              <p class="help-block text-danger"></p>
	            </div>
	          </div>
	          <div class="control-group">
	            <div class="form-group floating-label-form-group controls">
	              <label>ID</label>
	              <c:if test="${!empty check }"><p>이미 사용중인 아이디 입니다.</p></c:if>
	              <input type="text" class="form-control" placeholder="ID" name="id" required data-validation-required-message="Please enter your id">
	              <p class="help-block text-danger"></p>
	            </div>
	          </div>
	          <div class="control-group">
	            <div class="form-group floating-label-form-group controls">
	              <label>PW</label>
	              <input type="password" class="form-control" placeholder="PASSWORD" name="password"
	              		required data-validation-required-message="Please enter your id"
	              		style="font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;">
	              <p class="help-block text-danger"></p>
	            </div>
	          </div>
	          <div class="control-group">
	            <div class="form-group floating-label-form-group controls">
	              <label>ADDRESS</label>
	              <input type="text" class="form-control" placeholder="ADDRESS" value="${check.address}" name="address" required data-validation-required-message="Please enter your id">
	              <p class="help-block text-danger"></p>
	            </div>
	          </div>
	          <div class="control-group">
	            <div class="form-group floating-label-form-group controls">
	              <label>PHONE</label>
	              <input type="text" class="form-control" placeholder="PHONE" value="${check.phone}" name="phone" required data-validation-required-message="Please enter your password">
	              <p class="help-block text-danger"></p>
	            </div>
	          </div>
	          <br>
	          <div id="success"></div>
	          <div class="form-group">
					<input type="submit" class="btn btn-primary" id="sendMessageButton" value="JOIN">
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