<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="rDTO" value="${pDTO.dto}" />
<c:set var="perPage" value="${pDTO.perPage}" />
<c:set var="totalCount" value="${pDTO.totalCount}" />
<c:set var="curPage" value="${pDTO.curPage}" />
<c:set var="end" value="${totalCount/perPage}" />
<c:if test="${totalCount%perPage !=0}">
   <c:set var="end" value="${end+1}" />
</c:if>

<div class="container">
	<div class="row">
		<button type="button" class="btn btn-back-review btn-block">${cityename} 돌아가기</button>
	</div>
	<div class="jumbotron">
        <h3>제목 : ${rDTO.title}</h3><br>
        <h3>내용 : ${rDTO.content}</h3>
    </div>
<div class="row">
		<div class="table-responsive">
			<div class="review" data-couno="${couno}" data-cityename="${cityename}" data-cityno="${cityno}">
				<h4>${ename} Review</h4>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Author</th>
                  <th>title</th>
                  <th>Content</th>
                  <th>Date</th>
                  <th>ViewsCount</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="dto" items="${pDTO.list}" varStatus="status">
              		<c:choose>
              			<c:when test="${dto.revno == rDTO.revno}">
              				<tr class="reviewRetrieve-tr pointer bold" data-revno="${dto.revno}">
              			</c:when>
              			<c:otherwise>
              				<tr class="reviewRetrieve-tr pointer" data-revno="${dto.revno}">
              			</c:otherwise>
              		</c:choose>
	                  <td>
	                  	${totalCount - (curPage - 1) * perPage - status.index}
	                  </td>
	                  <td>${dto.userid}</td>
	                  <td>${dto.title}</td>
	                  <td>${dto.content}</td>
	                  <td>${dto.createdate}</td>
	                  <td>${dto.viewscount}</td>
	            </tr>
                </c:forEach>
              </tbody>
            </table>
		</div>
		<div class="page" data-curPage="${curPage}">
			<c:forEach var="i" begin="1" end="${end}" varStatus="status">
				<c:choose>
					<c:when test="${curPage == (status.index)}">
				    	 <span class="curPage pointer bold">${status.index}</span>
				    </c:when>
				    <c:otherwise>
				    	<span class="curPage pointer">
				    	 <a href="/trip/review/${couno}/${cityename}/${cityno}/?curPage=${status.index}&revno=${dto.revno}">${status.index}</a>
				    	 </span>
				    </c:otherwise>
			    </c:choose>
			</c:forEach>
		</div>
	</div>
</div>
