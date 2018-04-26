<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="perPage" value="${hpDTO.perPage}" />
<c:set var="totalCount" value="${hpDTO.totalCount}" />
<c:set var="curPage" value="${hpDTO.curPage}" />
<c:set var="end" value="${totalCount/perPage}" />
<c:if test="${totalCount%perPage !=0}">
   <c:set var="pageNum" value="${end+1}" />
</c:if>

<div class="container">
	<div class="row">
		<button type="button" class="btn btn-back-review btn-block">${ename} 돌아가기</button>
	</div>
	<div class="jumbotron">
        <h3>zzzz}</h3>
        <p>zzzz</p>
    </div>
<div class="row">
		<div class="table-responsive">
			<div class="review" data-couno="${couno}" data-ename="${ename}" data-cityno="${cityno}">
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
              		<c:choose>
						<c:when test="${status.index == 0}">
					    	<tr class="hotel-tr pointer bold" data-hno="${dto.hno}">
					    </c:when>
					    <c:otherwise>
					    	<tr class="hotel-tr pointer" data-hno="${dto.hno}">
					    </c:otherwise>
				    </c:choose>
	                  <td>
	                  	${(status.index+1) + (curPage-1)*5}
	                  </td>
	                  <td>${dto.hname}</td>
	                  <td>${dto.good}</td>
	                  <td>${dto.address}</td>
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
				    	<span class="curPage pointer">${status.index}</span>
				    </c:otherwise>
			    </c:choose>
			</c:forEach>
		</div>
	</div>
</div>
