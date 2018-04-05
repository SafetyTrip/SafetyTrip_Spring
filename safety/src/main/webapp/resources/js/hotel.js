$(document).ready( () => {
	$('.curPage').on('click', (e) => {
		const curPage = $(e.target).text();
		const couno = $('.hotel').attr('data-couno');
		const ename = $('.hotel').attr('data-ename');
		const cityno = $('.hotel').attr('data-cityno');
		
		if($('.page').attr('data-curPage') != curPage) {
			let uri = '/trip/hotel/'+couno+'/'+ename+"?curPage="+curPage;
			
			if(cityno != null) {
				uri = '/trip/hotel/'+couno+'/'+ename+"/"+cityno+"?curPage="+curPage;
			}
			
			location.href = uri;
		}
	});
});