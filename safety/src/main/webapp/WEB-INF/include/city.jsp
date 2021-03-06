<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<div class="page-header" data-userid="${login.userid}" data-couno="${couno}" data-cityename="${cityename}" data-cityno="${cityno}">
		<h3>${cityename}</h3>
	</div>
	<div class="row">
		<div class="col-md-6">
			<iframe height=400px width="100%" frameborder="0" style="border:0"
			  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q=attractions+in+${cityename}" allowfullscreen>
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
				<button class="btn btn-link pull-right" data-target="#myModal" data-toggle="modal">Review 작성</button>
				</h4>
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>#</th>
	                  <th>Title</th>
	                  <th>Author</th>
	                  <th>Date</th>
	                  <th>ViewCount</th>
	                  <th class="hidden">content</th>
	                </tr>
	              </thead>
	              <tbody>
	               <c:forEach begin='0' end='4' items="${rList}" var="rDTO" varStatus="status">
	                <tr class="review-tr pointer" data-revno="${rDTO.revno}">
	                  <td>${status.index+1}</td>
	                  <td>${rDTO.title}</td>
	                  <td>${rDTO.userid}</td>
	                  <td>${rDTO.createdate}</td>
	                  <td>${rDTO.viewscount}</td>
	                  <td class="hidden">${rDTO.content}</td>
	                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
			</div>
		</div>
<!-- Reivew 작성 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 id="modal-title" class="modal-title"></h4>
             </div>
       	<form id="reviewForm">
 			<div class="modal-body">
 				<h4>Review 작성</h4>
				<table class="table">
					<tr>
						<td>title</td>
						<td><input class="form-control" id="title" name="title" type="text"></td>
					</tr>
					<tr>
						<td>content</td>
						<td><textarea class="form-control" id="content" name="content" rows="10"></textarea></td>
					</tr>
				</table>
				<input type="hidden" id="cityno" name="cityno" value="${cityno}">
 				<input type="hidden" id="userid" name="userid" value="${login.userid}">
			</div>
		</form>
			<div class="modal-footer">
				<button class="btn btn-success" id="reviewSubmit">글쓰기</button>
				<button class="btn btn-default" data-dismiss="modal">취소</button>
			</div>	
		</div>
	</div>
</div>
</div>	
</div>