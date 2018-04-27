<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="page-header" data-couno="${couno}" data-cename="${cename}">
		<h3>${cename}</h3>
	</div>
	<div class="row">
		<div class="col-md-6">
			<iframe height=400px width="100%" frameborder="0" style="border:0"
			  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q=attractions+in+${cename}" allowfullscreen>
			</iframe>
			<div class="table-responsive pointer hotel-div">
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
		                <tr class="hotel-tr">
		                  <td>
		                  	${status.index + 1}
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
		                <tr class="safety-tr pointer" data-sno="${dto.sno}">
		                  <td>
		                  	${status.index + 1}
		                  </td>
		                  <td>${dto.title}</td>
		                  <td>${dto.createDate}</td>
		                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
			</div>
		</div>
		<div class="col-md-6">
			<div class="table-responsive">
				<h4>Review
					<div class="col-xs-3 pull-right">
					    <div class="form-group">
					      <select class="selectpicker form-control">
					      	<c:forEach items="${cList}" var="dto">
					       		 <option>${dto.cityename}</option>
					        </c:forEach>
					      </select>
					  </div>
					</div>
					
				</h4>
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>City</th>
	                  <th>Title</th>
	                  <th>Author</th>
	                  <th>Date</th>
	                  <th>ViewCount</th>
	                  <th class="hidden">content</th>
	                </tr>
	              </thead>
	              <tbody>
	              <c:forEach begin='0' end='4' items="${tList}" var="dto" varStatus="status">
					<tr>
					  <td>${status.index+1}</td>
					  <td>${dto.cityename}</td>
					  <td>${dto.title}</td>
					  <td>${dto.userid}</td>
					  <td>${dto.createdate}</td>
					  <td>${dto.viewscount}</td>	               
	              	</tr>
	              </c:forEach>
	              </tbody>
	            </table>
			</div>
		</div>
	</div>	
</div>