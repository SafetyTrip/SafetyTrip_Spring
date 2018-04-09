$(document).ready( () => {
	$('.hotel-div').on('click', () => {
		const couno = $('.page-header').attr('data-couno');
		const cityename = $('.page-header').attr('data-cityename');
		const cityno = $('.page-header').attr('data-cityno');
		
		location.href = '/trip/hotel/'+couno+'/'+cityename+'/'+cityno+'?curPage=1';
	});
	
	$('.safety-tr').on('click', (e) => {
		const couno = $('.page-header').attr('data-couno');
		const sno = $(e.target).closest('tr').attr('data-sno');
		
		location.href = '/trip/safety/'+couno+'?curPage=1&sno='+sno;
	});
});