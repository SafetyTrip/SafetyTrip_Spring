<%@page import="com.dto.UsersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Main navbar -->

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/trip">SafetyTrip</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse navbar-right">
			<ul class="nav navbar-nav">
				<c:if test="${empty login}">
					<li><a href="/trip/users">SignUp</a></li>
					<li><a href="/trip/loginForm">Login</a></li>
				</c:if>
				<c:if test="${!empty login}">
 					<li><a href="/trip/mypage">MyPage</a></li>
					<li><a href="/trip/loginAfter/logout">Logout</a></li>
				</c:if>
				<li><a href="/trip/qna">QnA</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>
