$(document).ready(function() {
	$('.hotel').click(function() {
		const couno = $('.page-header').attr('data-couno');
		const cename = $('.page-header').attr('data-cename');
		
		location.href = '/trip/hotel/'+couno+'/'+cename;
	});
	
	$('.safety-tr').click(function() {
		const sno = $(this).find('.sno').val();
	});
});