<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="<c:url value='/resources/img/main/SafetyTrip.png'/>">
	<!-- Title -->
    <title>SafetyTrip Main</title>
    <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- CSS -->
    <link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet">
    <!-- jQuery file -->
    <script src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <script>
    	$(document).ready(function() {
    		$('#btn-safety').click(function() {
    			$.ajax({
    				method: 'post',
    				url: 'addSafety',
    				async: false,
    				success: function(res) {
    					alert(res.mesg);
    				},
    				error: function(err) {
    					alert("에러가 발생했습니다.");
    				}
    			});
    		});
    		
			$('#btn-hotel').click(function() {
				$.ajax({
    				method: 'post',
    				url: 'addHotel',
    				async: false,
    				success: function(res) {
    					alert(res.mesg);
    				},
    				error: function(err) {
    					alert("에러가 발생했습니다.");
    				}
    			});
    		});
    	});
    </script>
  </head>

  <body>
	<jsp:include page="main/nav.jsp" flush="true" />
	<div class="container">
		<button id="btn-safety">새로운 안전 정보 추가</button>
		<button id="btn-hotel">새로운 호텔 정보 추가</button>
	</div>
	<jsp:include page="main/footer.jsp" flush="true" />
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </body>
</html>
