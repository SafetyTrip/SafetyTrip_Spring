$(document).ready( () => {
	$('.btn-back-review').on('click', (e) => {
		const cityno = $('.review').attr("data-cityno");
		const couno = $('.review').attr("data-couno");
		const ename = $('.review').attr("data-ename");
		
		location.href="/trip/city/"+couno+"/"+ename+"/"+cityno;
	});
});

