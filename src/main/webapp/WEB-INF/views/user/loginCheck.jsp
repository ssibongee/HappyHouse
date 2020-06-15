<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
      <form method="post" action="/happyhouse/login">
        <div class="control-group">
          <div class="form-group floating-label-form-group controls">
            <input type="text" class="form-control" placeholder="ID" name="id" required data-validation-required-message="Please enter your id">
            <p class="help-block text-danger"></p>
          </div>
        </div>
        <div class="control-group">
          <div class="form-group floating-label-form-group controls">
            <input style="font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;" type="password" class="form-control" placeholder="Password" name="password" required data-validation-required-message="Please enter your password">
            <p class="help-block text-danger"></p>
          </div>
        </div>
        <div id="success"></div>
        <div class="form-group">
		<input type="submit" class="btn btn-primary" value="LOGIN">
        </div>
      </form>
    </div>
  </div>
</div>