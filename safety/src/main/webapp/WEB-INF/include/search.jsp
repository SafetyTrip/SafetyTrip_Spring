<%@page import="com.dto.CountryDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
   <div class="page-header">
		<div class="col-md-12">
		  <form action="search" method="get">
	         <input class="form-control col-md-8" name="word" type="text" placeholder="Search" aria-label="Search" value="${word}">
	       </form>
	   	</div>
   </div>
   
   <div class="row">
		<h3>COUNTRY</h3>
		<div class="row">
			<div class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></div>
			<div class="col-md-11 horizontal-scroll">
			<c:forEach var="dto" items="${countryList}" varStatus="status">
				<div>
		          <div class="panel panel-default pointer" data-couno="${dto.couno}" data-cename="${dto.cename}">
		            <div class="panel-heading">
		              <h3 class="panel-title">
		              	${dto.cname} (${dto.cename})
		              </h3>
		            </div>
		            <div class="panel-body">
		              <img src="<c:url value='/resources/img/country/${dto.couno}.png'/>" style="height: 100px;" />
		            </div>
		          </div>
		        </div>
			</c:forEach>
			</div>
			<div class="glyphicon glyphicon-chevron-right" aria-hidden="true"></div>
		</div>
	</div>
	
	<div class="row">
		<h3>CITY</h3>
		<div class="row">
			<div class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></div>
			<div class="col-md-11 horizontal-scroll">
			<c:forEach var="dto" items="${cityList}" varStatus="status">
				<div>
		          <div class="panel panel-default pointer" data-couno="${dto.couno}" data-cityno="${dto.cityno}" data-cityename="${dto.cityename}">
		            <div class="panel-heading">
		              <h3 class="panel-title">
		              	${dto.cityname} (${dto.cityename})
		              </h3>
		            </div>
		            <div class="panel-body">
		              <img src="<c:url value='/resources/img/city/${dto.cityno}.png'/>" style="height: 100px;" />
		            </div>
		          </div>
		        </div>
			</c:forEach>
			</div>
			<div class="glyphicon glyphicon-chevron-right" aria-hidden="true"></div>
		</div>
	</div>
</div>