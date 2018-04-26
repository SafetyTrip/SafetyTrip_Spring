$(document).ready( () => {
	$('.btn-back-review').on('click', (e) => {
		const cityno = $('.review').attr("data-cityno");
		const couno = $('.review').attr("data-couno");
		const ename = $('.review').attr("data-ename");
		
		location.href="/trip/city/"+couno+"/"+ename+"/"+cityno;
	});
	
	$('.reviewRetrieve-tr').on('click',function(event){
		const cityno = $('.review').attr("data-cityno");
		const couno = $('.review').attr("data-couno");
		const cityename = $('.review').attr("data-cityename");
		const revno = $(event.target).closest('tr').attr('data-revno');
		
		location.href="/trip/review/" + couno + "/" + cityename + "/" + cityno + "?curPage=1&revno=" + revno;
	});
	
	
});

