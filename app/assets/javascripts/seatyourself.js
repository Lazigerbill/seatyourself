

$(document).on('ready page:load', function(){
	$('#search-form').submit(function(event){
		event.preventDefault();
		var searchValue = $('#search').val();

		$.ajax({
			url: '/seatyourself?search=' + searchValue,
			type: 'GET',
			dataType: 'html',
		}).done(function(data){
			$('#restaurants').html(data);
		});
	});
});