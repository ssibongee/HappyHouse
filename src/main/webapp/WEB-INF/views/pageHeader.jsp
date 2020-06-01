<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="masthead" style="background-image: url('resources/res/img/apartment.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="page-heading">
					<h1>${title}</h1>
					<span class="subheading">${ desc }</span>
					<div class="container" align="center">
						<br>
						<c:if test="${ !empty msg }">
							<b>${ msg }</b>
							<br>
						</c:if>
						<c:if test="${ empty id }">
							<!-- Button trigger modal -->
							<div class="container">
								<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#login">
								  LOGIN
								</button>	
								<a href="/happyhouse/join" type="button" class="btn btn-primary btn-lg">
								  JOIN
								</a><br><br>	
								<a href="/happyhouse/findPw" class="btn btn-warning btn-xs">
								  비밀번호 수정
								</a>	
							</div>
							<!-- Modal -->
							<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h4 class="modal-title" id="myModalLabel">LOGIN</h4>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							      </div>
							      <div class="modal-body">
							        <%@ include file="/WEB-INF/views/user/loginCheck.jsp" %>
							      </div>
							    </div>
							  </div>
							</div>	
						</c:if>
						<c:if test="${!empty id}">
							<p class="bg-info">
								${id }님, 반갑습니다!!<br>
							</p>
							<a type="button" href="/happyhouse/logout"class="btn btn-primary btn-lg">
							  LOGOUT 
							</a>						
							<a href="/happyhouse/user" type="button" class="btn btn-primary btn-lg">
							  	회원정보
							</a>	
							<a href="/happyhouse/delete" id="delete_btn" type="button" class="btn btn-primary btn-lg">
							 	 회원 탈퇴 
							</a>	
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>

	

<script type="text/javascript">
// 	$(document).ready(function(){
// 		$("#delete_btn").click(function(){
// 			$.ajax({
// 				url : 'http:/localhose:8080/happyhouse/user',
// 				type : 'delete',
// 				dataType : 'json',
// 				error:function(xhr, status, msg){
// 					alert("상태 값 : "+status+"http에러 메시지 : "+msg);
// 				},
// 				success : function(){
// 					alert("회원 탈퇴를 성공했습니다.");
// 				}
// 			});
// 		});
// 	});
</script>