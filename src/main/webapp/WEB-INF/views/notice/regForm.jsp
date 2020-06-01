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
		   	
		      <form method="post" action="/happyhouse/notice/insert">
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>Title</label>
		            <input type="text" class="form-control" placeholder="TITLE" id="title" name="title" required data-validation-required-message="Please enter your name.">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>Content</label>
		            <textarea rows="5" class="form-control" placeholder="CONTENT" id="content" name="content" required data-validation-required-message="Please enter a message."></textarea>
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <br>
		        <div id="success"></div>
		        <div class="form-group">
		          <button type="submit" class="btn btn-primary" id="sendMessageButton">등록하기</button>
		          <input type="reset" class="btn btn-primary" value="돌아가기" onClick="location.href='/happyhouse/notice/'">
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