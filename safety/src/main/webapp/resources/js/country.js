$(document).ready( () => {
	$('.table-responsive').on('click', () => {
		const couno = $('.page-header').attr('data-couno');
		const cename = $('.page-header').attr('data-cename');
		
		location.href = '/trip/hotel/'+couno+'/'+cename+"?curPage=1";
	});
	
	$('.safety-tr').on('click', (e) => {
		const sno = $(e.target).find('.sno').val();
	});
});