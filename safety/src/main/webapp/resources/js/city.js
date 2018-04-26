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
	
	$('.review-tr').on('click',function(event){
		const couno = $('.page-header').attr('data-couno');
		const cityename = $('.page-header').attr('data-cityename');
		const cityno = $('.page-header').attr('data-cityno');
		const revno = $(event.target).closest('tr').attr('data-revno');
		
		location.href = '/trip/review/' + couno + '/' + cityename + '/' + cityno + '?curPage=1&revno='+revno;
		
		
	});
	
	
	$('#reviewSubmit').on('click',function(){
		const couno = $('.page-header').attr('data-couno');
		const cityename = $('.page-header').attr('data-cityename');
		var cityno = $('#cityno').val();
		var userid = $('#userid').val();
		var title = $('#title').val();
		var content = $('#content').val();
		
		if(userid == ""){
			alert("로그인 작업이 필요합니다.");
			location.href = '/trip/loginForm';
		} else {
			$.ajax({
				url : "/trip/reviewWrite",
				type : "get",
				data : {
					"cityno" : cityno,
					"userid" : userid,
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
		}
	});
	
});