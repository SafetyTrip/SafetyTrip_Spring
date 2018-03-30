$(document).ready(function() {
	$('.panel').click(function() {
		var couno = $(this).attr("data-couno");
		var cname = $(this).attr("data-cname");
		
		if(couno != undefined) {
			location.href="country/"+couno+"/"+cname;
		} else {
			var cityno = $(this).attr("data-cityno");
			var cityname = $(this).attr("data-cityname");
			
			location.href="city/"+cityno+"/"+cityname;
		}
	});
	
	$('.glyphicon-chevron-left').click(function() {
		var next = $(this).siblings('.horizontal-scroll').scrollLeft() - 200;
		$(this).siblings('.horizontal-scroll').scrollLeft(next);
	});
	
	$('.glyphicon-chevron-right').click(function() {
		var next = $(this).siblings('.horizontal-scroll').scrollLeft() + 200;
		$(this).siblings('.horizontal-scroll').scrollLeft(next);
	});
});