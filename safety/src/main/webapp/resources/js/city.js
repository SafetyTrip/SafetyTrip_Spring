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
	
	
	$('#reviewSubmit').on('click',function(){
		//var data = $('#reviewForm').serialize();
		const couno = $('.page-header').attr('data-couno');
		const cityename = $('.page-header').attr('data-cityename');
		var cityno = $('#cityno').val();
		var uno = $('#uno').val();
		var title = $('#title').val();
		var content = $('#content').val();
		
		$.ajax({
			url : "/trip/reviewWrite",
			type : "get",
			data : {
				"cityno" : cityno,
				"uno" : uno,
				"title" : title,
				"content" : content
			},
			success : function(result){
				if(result){
					alert('리뷰 등록이 완료되었습니다.');
					location.href="/trip/city/" + couno + '/' + cityename + '/' + cityno;
				}
			}
		})
	});
	
});