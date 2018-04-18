$(document).ready(function() {
	$("#login_js").submit(function() {
		if ($("#userid").val() == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		if ($("#passwd").val() == "") {
			alert("비밀번호를 입력해주세요");
			return false;
		}
	});
});

Kakao.init('7b89cc065e6fdf006b74bd862bda597b');
function loginWithKakao() {
  // 로그인 창을 띄웁니다.
  Kakao.Auth.login({
    success: function(authObj) {
    	Kakao.API.request({
	        url: '/v1/user/me',
	        success: function(res) {
	        	let form = document.createElement('form');
	        	let sns;
	        	let email;

	        	sns = document.createElement('input');
	        	sns.setAttribute('type', 'hidden');
	        	sns.setAttribute('name', 'sns');
	        	sns.setAttribute('value', 'kakao');
	        	form.appendChild(sns);

	        	email = document.createElement('input');
	        	email.setAttribute('type', 'hidden');
	        	email.setAttribute('name', 'email');
	        	email.setAttribute('value', res.kaccount_email);
	        	form.appendChild(email);
	        	
	        	form.setAttribute('method', 'post');
	        	form.setAttribute('action', "snsLogin");
	        	document.body.appendChild(form);

	        	form.submit();
	          // {"kaccount_email":"leejj90@naver.com","kaccount_email_verified":true,"id":760782838,"properties":{"profile_image":"http://k.kakaocdn.net/dn/CjMDM/btqk9hWElJu/8iq1wSl4a4JhKBmvJbUNq1/profile_640x640s.jpg","nickname":"이정준","thumbnail_image":"http://k.kakaocdn.net/dn/CjMDM/btqk9hWElJu/8iq1wSl4a4JhKBmvJbUNq1/profile_110x110c.jpg"}}
	        },
	        fail: function(error) {
	        	alert("로그인에 실패했습니다.");
	        }
        });
    },
    fail: function(err) {
      alert("로그인에 실패했습니다.");
    }
  });
};

window.fbAsyncInit = function() {
	FB.init({
		appId      : '122362501665138',
		xfbml      : true,
		version    : 'v2.9'
    });
	
	FB.api('/me', {fields: 'email'}, function(response) {
		console.log(response);
	});
};

(function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));