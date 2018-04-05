$(document).ready(function() {
	$('.panel').click(function() {
		const couno = $(this).attr("data-couno");
		const cename = $(this).attr("data-cename");
		
		if(cename != undefined) {
			location.href="country/"+couno+"/"+cename;
		} else {
			const cityno = $(this).attr("data-cityno");
			const cityename = $(this).attr("data-cityename");
			
			location.href="city/"+couno+"/"+cityename+"/"+cityno;
		}
	});
	
	$('.glyphicon-chevron-left').click(function() {
		const next = $(this).siblings('.horizontal-scroll').scrollLeft() - 200;
		$(this).siblings('.horizontal-scroll').scrollLeft(next);
	});
	
	$('.glyphicon-chevron-right').click(function() {
		const next = $(this).siblings('.horizontal-scroll').scrollLeft() + 200;
		$(this).siblings('.horizontal-scroll').scrollLeft(next);
	});
});