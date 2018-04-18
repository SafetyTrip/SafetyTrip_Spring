<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
  <div class="row">
    <div class="main">
	  <h3>Please Log In, or <a href="users">Sign Up</a></h3>
      <div class="sns">
	      <div class="row">
	      	<a id="custom-login-btn" href="javascript:loginWithKakao()">
			  <img id="kakao-login" width="80%" src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" />
		    </a>
	      </div>
	      <div class="row">
	      		<img id="facebook-login" class="pointer" width="80%" src="https://scontent-icn1-1.xx.fbcdn.net/v/t39.2365-6/17639236_1785253958471956_282550797298827264_n.png?_nc_cat=0&oh=77d4e49cfba09d965b771239143fb455&oe=5B4FC0EA" />
	      </div>
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

