<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="<c:url value='/resources/img/main/SafetyTrip.png'/>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>SafetyTrip Main</title>
  
    <!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- CSS -->
    <link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/login.css'/>" rel="stylesheet">
    <!-- jQuery file -->
    <script src="<c:url value='/resources/js/jquery-3.3.1.min.js'/>"></script>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
    <jsp:include page="main/nav.jsp" flush="true" />
	<jsp:include page="users/loginForm.jsp" flush="true" />
	<jsp:include page="main/footer.jsp" flush="true" />
	
	<script src="<c:url value='/resources/js/login.js'/>"></script>
</body>
</html>