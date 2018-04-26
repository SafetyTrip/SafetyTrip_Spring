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
	
	$('.hotel-tr').closest('tr').on('click', (e) => {
		if($(e.target).hasClass('btn-good')) {
			if(uno == "") {
				alert("로그인 후 이용해주세요.");
			} else {
				$.ajax({
					url: '/trip/hotel/good',
					type: 'get',
					data: {
						hno: $(e.target).closest('.hotel-tr').attr('data-hno'),
						uno: uno
					},
					success: function(res) {
						if(res.result == "추가") {
							$(e.target).addClass("good-click");
						} else if(res.result == "삭제") {
							$(e.target).removeClass("good-click");
						} else {
							alert("다시 시도해주세요.");
						}
						
						$(e.target).siblings('.good').text(res.good);
					},
					error: function(err) {
						alert("다시 시도해주세요.");
					} 
				});
			}
		} else {
			$('.bold').removeClass('bold');
			$(e.target).closest('tr').addClass('bold');
			
			var address = $(e.target).closest('tr').children().eq(2).text();
			
			$('#google-map').attr("src","https://www.google.com/maps/embed/v1/search?key=AIzaSyDx8zY9GlEPzdFHI7Q4DlWgRD8t2K4mf9M&q="+address);
		}
	});
	
	$('.btn-back').on('click', (e) => {
		const cityno = $('.hotel').attr("data-cityno");
		const couno = $('.hotel').attr("data-couno");
		const ename = $('.hotel').attr("data-ename");
		
		if(cityno == "") {
			location.href="/trip/country/"+couno+"/"+ename;
		} else {
			location.href="/trip/city/"+couno+"/"+ename+"/"+cityno;
		}
	});
});

