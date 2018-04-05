<%@page import="com.dto.HotelPageDTO"%>
<%@page import="com.dto.SafetyDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="jumbotron">
        <h3></h3>
        <p></p>
    </div>
	<div class="row">
		<div class="table-responsive">
			<div class="hotel" data-couno="${couno}" data-cityno="${cityno}">
				<h4>${ename} 근처 호텔</h4>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Hotel</th>
                  <th>Good</th>
                  <th>Address</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="dto" items="${hpDTO.list}" varStatus="status">
	                <tr class="hotel-tr pointer">
	                  <td>
	                  	${status.index + 1}
	                  	<input type="hidden" class="hno" value="${dto.hno}">
	                  </td>
	                  <td>${dto.hname}</td>
	                  <td>${dto.good}</td>
	                  <td>${dto.address}</td>
	                </tr>
                </c:forEach>
              </tbody>
            </table>
		</div>
		<div class="page" data-curPage="${hpDTO.curPage}">
			<% 
				HotelPageDTO hpDTO = (HotelPageDTO) request.getAttribute("hpDTO");
				int perPage = hpDTO.getPerPage();
				int totalCount = hpDTO.getTotalCount();
				int curPage = hpDTO.getCurPage();
				int max = totalCount/perPage;
				
				if(totalCount%perPage != 0) {
					max++;
				}
				
				for(int i=1; i<max; i++) {
					
			%>
			<span class="curPage pointer 
			<% 
				if(curPage == i) {
			%>
				bold
			<% 
				}
			%>
			"><%= i%></span>
			<% 
				}
			%>
		</div>
	</div>
</div>