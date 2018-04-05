$(document).ready(() => {
	$('.curPage').click(() => {
		const hpDTO = {
			couno: $('.hotel').attr('data-couno'),
			city: $('.hotel').attr('data-cityno'),
			curPage: $(this).attr('data-page')
		};
		
		if($('.page').attr('data-curPage') != hpDTO.curPage) {
			$.ajax({
				contextType: "application/json",
				type : "post",
				url : "/trip/hotelList",
				data : JSON.stringify(hpDTO),
				dataType : "json",
				success : (data) => {
					consoel.log(data);
				},
				error: (e) => {
					console.log(e);
				}
			});
		} else {
			console.log(hpDTO);
		}
	});
});