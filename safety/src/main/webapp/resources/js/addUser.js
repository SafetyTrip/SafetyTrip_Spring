var idcheck = null;
var idcheck2 = null;
var idcheck3 = null;

$(document).ready(function(){
	$("#addUser").submit(function(){
	 if($("#userid").val()==""){
		 alert("아이디를 입력해주세요");
		 return false;
	 }						 
	 if($("#email").val()==""){
		 alert("이메일을 입력해주세요");
		 return false;
	 }
	 if($("#name").val()==""){
		 alert("이름을 입력해주세요");
		 return false;
	 }				 
	 if($("#passport").val()==""){
		 alert("여권번호을 입력해주세요");
		 return false;
	 }
	 if(!$(':input:radio[name=sex]:checked').val()){					 
		 alert("성별을 입력해주세요");
		 return false;
	 }
	 if($("#birth").val()==""){
		 alert("생년월일을 입력해주세요");
		 return false;
	 }
	 if($("#sample6_postcode").val()==""){
		 alert("주소를 입력해주세요");
		 return false;
	 }
	 
	 		alert("회원 등록 성공 ");
	});


	$("#passwd_check").keyup(function() {
		if ($("#passwd").val() != $("#passwd_check").val()) {
			$("#passwd_check_div").text("암호불일치");
			console.log("암호불");
		} else {
			$("#passwd_check_div").text("암호 일치");
			console.log("암호  일치");
		}
	});

 

	$("#idcheck").click(function(){
		$.ajax({
			type : "get",
			url	: "IdCheck",
			dataType : "text",
			data:{
				userid : $("#userid").val()
			},
			success : function(data) {
				alert(data);
			},
			error:function(e){
				console.log(e);
				alert(data);
			}
		});
	});	

	
	$("#idcheck2").click(function(){
		$.ajax({
			type : "get",
			url	: "EmailCheck",
			dataType : "text",
			data:{
				email : $("#email").val()
			},
			success : function(data) {
				alert(data);
			},
			error:function(e){
				console.log(e);
				alert(data);
			}
		});
	});	
	


	$("#idcheck3").click(function(){
		$.ajax({
			type : "get",
			url : "Uname",
			dataType : "text",
			data:{
				uname : $("#uname").val()
			},
			success : function(data) {
				alert(data);
			},
			error:function(e){
				console.log(e);
				alert(data);
			}
		});
	});	
});