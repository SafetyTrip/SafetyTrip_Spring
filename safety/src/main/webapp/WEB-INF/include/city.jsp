<%@page import="java.util.List"%>
<%@page import="com.dto.SafetyDTO"%>
<%@page import="com.dto.HotelDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="page-header">
		<h3>${cityename}</h3>
	</div>
	<div class="row">
		<div class="col-md-6">
			<iframe height=400px width="100%" frameborder="0" style="border:0"
			  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q=${cityename}+관광+명소" allowfullscreen>
			</iframe>
			<div class="table-responsive">
				<h4>인근 호텔</h4>
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Hotel</th>
	                  <th>Good</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<c:forEach var="dto" items="${hList}" varStatus="status">
		                <tr class="hotel-tr pointer">
		                  <td>
		                  	${status.index}
		                  	<input type="hidden" class="hno" value="${dto.hno}">
		                  </td>
		                  <td>${dto.hname}</td>
		                  <td>${dto.good}</td>
		                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
			</div>
		</div>
		<div class="col-md-6">
			<div class="table-responsive">
				<h4>안전 정보</h4>
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Title</th>
	                  <th>Date</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<c:forEach var="dto" items="${sList}" varStatus="status">
		                <tr class="safety-tr pointer">
		                  <td>
		                  	${status.index}
		                  	<input type="hidden" class="sno" value="${dto.sno}">
		                  </td>
		                  <td>${dto.title}</td>
		                  <td>${dto.createDate}</td>
		                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
			</div>
		</div>
	</div>	
</div>