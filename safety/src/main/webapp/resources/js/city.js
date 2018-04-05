$(document).ready( () => {
	$('.table-responsive').on('click', () => {
		const couno = $('.page-header').attr('data-couno');
		const cityename = $('.page-header').attr('data-cityename');
		const cityno = $('.page-header').attr('data-cityno');
		
		location.href = '/trip/hotel/'+couno+'/'+cityename+"/"+cityno+"?curPage=1";
	});
	
	$('.safety-tr').on('click', (e) => {
		const sno = $(e.target).find('.sno').val();
	});
});