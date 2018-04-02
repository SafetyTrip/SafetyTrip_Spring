$(document).ready(function() {
	$('.panel').click(function() {
		var couno = $(this).attr("data-couno");
		var cename = $(this).attr("data-cename");
		
		if(cename != undefined) {
			location.href="country/"+couno+"/"+cename;
		} else {
			var cityno = $(this).attr("data-cityno");
			var cityename = $(this).attr("data-cityename");
			
			location.href="city/"+couno+"/"+cityno+"/"+cityename;
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