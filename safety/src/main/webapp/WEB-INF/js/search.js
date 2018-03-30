$(document).ready(function() {
	$('.panel').click(function() {
		var couno = $(this).attr("data-couno");
		var cname = $(this).attr("data-cname");
		
		location.href="country/"+couno+"/"+cname;
	});
});