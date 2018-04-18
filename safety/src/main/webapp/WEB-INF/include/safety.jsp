<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="perPage" value="${spDTO.perPage}" />
<c:set var="totalCount" value="${spDTO.totalCount}" />
<c:set var="curPage" value="${spDTO.curPage}" />
<c:set var="end" value="${totalCount/perPage}" />
<c:if test="${totalCount%perPage !=0}">
   <c:set var="pageNum" value="${end+1}" />
</c:if>

<c:set var="sDto" value="${spDTO.dto}"></c:set>


<div class="container">
	<div class="row">
		<button type="button" class="btn btn-back btn-block" data-cename="${cename}">${cename} 돌아가기</button>
	</div>
	<div class="jumbotron">
        <h3>${sDto.title}</h3>
        <p>${sDto.content}</p>
    </div>
	<div class="row">
		<div class="table-responsive">
			<div class="safety" data-couno="${couno}">
				<h4>${cename} 안전 정보</h4>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Title</th>
                  <th>Date</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="dto" items="${spDTO.list}" varStatus="status">
              		<c:choose>
						<c:when test="${dto.sno == sDto.sno}">
					    	<tr class="safety-tr pointer bold" data-sno="${dto.sno}">
					    </c:when>
					    <c:otherwise>
					    	<tr class="safety-tr pointer" data-sno="${dto.sno}">
					    </c:otherwise>
				    </c:choose>
	                  <td>
	                  	${(status.index+1) + (curPage-1)*5}
	                  </td>
	                  <td>${dto.title}</td>
	                  <td>${dto.createDate}</td>
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