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

<div id="map"></div>
<div class="container">
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
                  <th>Good</th>
                  <th>Address</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="dto" items="${hpDTO.list}" varStatus="status">
	                <tr class="hotel-tr pointer" data-hno="${dto.hno}" data-lat="${dto.lat}" data-lng="${dto.lng}">
	                  <td>
	                  	${(status.index+1) + (curPage-1)*5}
	                  </td>
	                  <td class="hotel-hname">${dto.hname}</td>
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

<script>
var map;
function initMap() {
	var features = [];
	var map_lat = 0;
	var map_lng = 0;
    
    for(var i=0;i<5;i++) {
		var hname = $('.hotel-hname').eq(i).text();
		var lat = Number($('.hotel-tr').eq(i).attr('data-lat'));
		var lng = Number($('.hotel-tr').eq(i).attr('data-lng'));
		
		features[i] = {
	            position: new google.maps.LatLng(lat, lng),
	            type: hname
	          };
		
		map_lat += lat;
		map_lng += lng;
	}
    
    map_lat = map_lat/5;
    map_lng = map_lng/5;
    
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: new google.maps.LatLng(map_lat, map_lng),
      mapTypeId: 'roadmap'
    });

    // Create markers.
    features.forEach(function(feature) {
      var marker = new google.maps.Marker({
        position: feature.position,
        icon: 'https://maps.google.com/mapfiles/kml/shapes/parking_lot_maps.png',
        map: map
      });
    });
  }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&callback=initMap"></script>
