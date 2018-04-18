<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>${login.userid}

<div class="container">
<form id="mypage" class="form-horizontal" action="loginAfter/mypageupdate" method="post">
<div class="page-header">
  <h1>개인정보 <br><small>정보를 수정할 경우에는 비밀번호를 꼭 다시 한번 확인해 주세요.</small></h1>
</div>
<div class="form-group">
		<label class="col-md-4 control-label" for="userid">아이디</label>  
		<div class="col-md-3">
		  <input id="userid" name="userid" type="text" disabled="disabled" placeholder="userid" class="form-control input-md" value ="${login.userid}" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="passwd">비밀번호</label>
		<div class="col-md-3">
			<input id="passwd" name="passwd" type="password" placeholder="password" class="form-control input-md">
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="passwd_check">비밀번호
			확인</label>
		<div class="col-md-3">
			<input id="passwd_check" name="passwd_check" type="password" placeholder="passwd_check" class="form-control input-md">
		</div>
		<div id="passwd_check_div"></div>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="email">이메일</label>
		<div class="col-md-3">
			<input id="email" name="email" type="email" placeholder="email" class="form-control input-md" value ="${login.email}">
		</div>
		<button type="button" id="idcheck2" class="btn btn-default" name="idcheck2" value="0">중복 확인</button>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="uname" >닉네임</label>
		<div class="col-md-3">
			<input id="uname" name="uname" type="text" placeholder="uname" 	class="form-control input-md" value ="${login.uname}">
		</div>
		<button type="button" id="idcheck3" class="btn btn-default" name="idcheck3" value="0">중복 확인</button>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="name">실명</label>
		<div class="col-md-3">
			<input id="name" name="name" type="text" placeholder="name" class="form-control input-md"  value ="${login.name}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="passport">여권 번호</label>
		<div class="col-md-3">
			<input id="passport" name="passport" type="text" placeholder="passport" class="form-control input-md"  value ="${login.passport}">
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-md-4 control-label" for="birth">생년월일</label>
		<div class="col-md-3">
			<input id="birth" name="birth" type="text" placeholder="19901010" class="form-control input-md"  value ="${login.birth}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4 control-label" for="birth">주소</label>
		<div class="col-md-3">
			<input type="text" name="post" id="sample6_postcode" placeholder="우편번호" class="form-control input-md"  value ="${login.post}">
		</div>
		<input type="button" onclick="sample6_execDaumPostcode()"
			class="btn btn-default" value="우편번호 찾기" >
	</div>
	<div class="form-group">
		<label class="col-md-4"></label>
		<div class="col-md-5">
			<input type="text" name="address1" id="sample6_address" placeholder="주소" class="form-control input-md"  value ="${login.address1}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4"></label>
		<div class="col-md-5">
			<input type="text" name="address2" id="sample6_address2" placeholder="상세주소" class="form-control input-md"  value ="${login.address2}">
		</div>
	</div>
	<div class="form-group" align="center">
		<input type="submit" value="수정하기" class="btn btn-default"> 
		<input 	type="reset" value="취소" class="btn btn-default">
	</div>
</form>
</div>

