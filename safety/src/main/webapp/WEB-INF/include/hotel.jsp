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

<!-- <div id="map"></div> -->
<div class="container">
	<div class="row">
		<button type="button" class="btn btn-back btn-block">${ename} 돌아가기</button>
	</div>
	<div class="row">
		<iframe id="google-map" height=400px width="100%" frameborder="0" style="border:0"
			  src="https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q=${hpDTO.list[0].address}" allowfullscreen>
		</iframe>
	</div>
	<div class="row">
		<div class="table-responsive">
			<div class="hotel" data-couno="${couno}" data-ename="${ename}" data-cityno="${cityno}">
				<h4>${ename} 근처 호텔</h4>
            </div>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Hotel</th>
                  <th>Address</th>
                  <th>Good</th>
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
	                  <td>${dto.address}</td>
	                  <td>${dto.good}</td>
	                  <td>
	                  	<button class="btn-default">♡</button>
	                  </td>
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
