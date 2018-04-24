<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="curPage" value="${rList.curPage}" />
<c:set var="perPage" value="${rList.perPage}" />
<c:set var="totalCount" value="${rList.totalCount}" />
<c:set var="endPage" value="${totalCount / perPage}" />
<c:if test="${totalCount % perPage != 0}">
	<c:set var="endPage" value="${endPage+1}"/>
</c:if>


<div class="form-group text-center">
	<ul class="pagination">
		<c:forEach begin="1" end="${endPage}" varStatus="status">
			<c:if test="${curPage == status.index}">
				<li class="page-item"><a class="page-link">${status.index}</a></li>	
			</c:if>
			<c:if test="${curPage != status.index}">
				<li class="page-item">
					<a class="page-link" 
						href="/trip/city/${couno}/${cityename}/${cityno}?curPage=${status.index}">${status.index}</a>
				</li>
			</c:if>
		</c:forEach>
	</ul>
</div>