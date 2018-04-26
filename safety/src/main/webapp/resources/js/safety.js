$(document).ready( () => {
	$('.curPage').on('click', (e) => {
		const curPage = $(e.target).text();
		const couno = $('.safety').attr('data-couno');
		
		if($('.page').attr('data-curPage') != curPage) {
			location.href = '/trip/safety/'+couno+'?curPage='+curPage;
		}
	});
	
	$('.safety-tr').on('click', (e) => {
		const couno = $('.safety').attr('data-couno');
		const sno = $(e.target).closest('tr').attr('data-sno');
		const curPage = $('.page').attr('data-curPage');
		
		location.href = '/trip/safety/'+couno+'?curPage='+curPage+'&sno='+sno;
	});
	
	$('.btn-back').on('click', (e) => {
		const couno = $('.safety').attr("data-couno");
		const cename = $(e.target).attr("data-cename");
		
		location.href="../country/"+couno+"/"+cename;
	});
});