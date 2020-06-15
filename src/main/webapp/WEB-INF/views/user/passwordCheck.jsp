<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- header -->
	<%@ include file="/WEB-INF/views/head.jsp"%>
	
	<body>
		<!-- Navigation -->
		<%@ include file="/WEB-INF/views/nav.jsp"%>
		
		<!-- Page Header -->
		<%@ include file="/WEB-INF/views/pageHeader.jsp"%>
		
		<c:if test="${!empty id}">
			<div class="container">
				<h3>비밀번호 확인</h3>
				<p>본인 확인을 위해 비밀번호를 입력해주세요</p>
					${ msg }
				<div class="row">
			      <div class="col-lg-8 col-md-10 mx-auto">
			        <form method="post" action="/happyhouse/checkPass">
			          <div class="control-group">
			            <div class="form-group floating-label-form-group controls">
			              <label>PW</label>
			              <input type="password" class="form-control" placeholder="PASSWORD" name="password"
			              	required data-validation-required-message="Please enter your id"
			              	style="font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;">
			              <p class="help-block text-danger"></p>
			            </div>
			          </div>
			          <button class="btn btn-primary" id="secession">비밀번호 확인</button>
			          <input class="btn btn-primary" value="메인으로" onClick="location.href='/happyhouse/'">
			        </form>
			      </div>
			    </div>
			</div>
		</c:if>
		<c:if test="${empty id}">
			<div class="container">
				로그인을 먼저 해주세요
			</div>
		</c:if>
		
		<!-- Footer -->
      	<%@ include file="/WEB-INF/views/footer.jsp"%>
	
	  	<!-- JavaScript -->
	  	<%@ include file="/WEB-INF/views/script.jsp"%>
	</body>
</html>