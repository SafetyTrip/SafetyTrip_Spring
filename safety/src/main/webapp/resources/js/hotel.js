$(document).ready( () => {
	$('.curPage').on('click', (e) => {
		const curPage = $(e.target).text();
		
		if($('.page').attr('data-curPage') != curPage) {
			const couno = $('.hotel').attr('data-couno');
			const ename = $('.hotel').attr('data-ename');
			const cityno = $('.hotel').attr('data-cityno');
		
			let uri = '/trip/hotel/'+couno+'/'+ename+'?curPage='+curPage;
			
			if(cityno != null) {
				uri = '/trip/hotel/'+couno+'/'+ename+'/'+cityno+'?curPage='+curPage;
			}
			
			location.href = uri;
		}
	});
	
	$('.hotel-tr').on('click', (e) => {
		$('.bold').removeClass('bold');
		$(e.target).closest('tr').addClass('bold');
		
		var hname = $(e.target).closest('tr').children().last().text();
		console.log(hname);
		$('#google-map').attr("src","https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q="+hname);
	});
});

