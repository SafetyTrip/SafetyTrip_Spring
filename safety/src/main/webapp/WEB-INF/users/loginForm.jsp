<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
  <div class="row">
    <div class="main">
	  <h3>Please Log In, or <a href="users">Sign Up</a></h3>
      <div class="row">
      	<a id="custom-login-btn" href="javascript:loginWithKakao()">
		  <img id="kakao-login" src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="80%"/>
	    </a>
      </div>
      <div class="row">
      	<div class="fb-login-button" data-width="280" data-max-rows="1" data-size="large" data-button-type="login_with" 
      	data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" scope="email"></div>
      </div>
      <div class="login-or">
        <hr class="hr-or">
        <span class="span-or">or</span>
      </div>

      <form id="login" action="login" method="post">
        <div class="form-group">
          <label for="userid">Userid</label>
          <input type="text" class="form-control" name="userid" id="userid">
        </div>
        <div class="form-group">
          <a class="pull-right" href="#">Forgot password?</a>
          <label for="passwd">Password</label>
          <input type="password" class="form-control" name="passwd" id="passwd">
        </div>
        <div class="checkbox pull-right">
          <label>
            <input type="checkbox">
            Remember me </label>
        </div>
        <button type="submit" class="btn btn btn-primary">
          Log In
        </button>
      </form>
    
    </div>
    
  </div>
</div>

