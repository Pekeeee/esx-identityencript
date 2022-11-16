$(function() {
	$.post('http://esx_identity/ready', JSON.stringify({}))

	window.addEventListener('message', function(event) {
		if (event.data.type === "enableui") {
			$(".body").css("display","block");
		}

		else if(event.data.type === "tipollegada"){
			$(".selector").css("display","block");
			
		  }

		  else if(event.data.type === "disableregister"){
			$(".body").css("display","none");
			
		  }

		  else if(event.data.type === "cerrarlocation"){
			$(".body").fadeOut(150);
			$(".selector").fadeOut(150);
			
		  }

		  else if(event.data.type === "cerrarcorrido"){
			$(".recorrido").fadeOut(150);
			
		  }

		  else if(event.data.type === "corrido"){
			$(".recorrido").css("display","block");
		  }
	})

	$('.avion').on('click', function(e){
		$.post('http://esx_identity/tipollegada', JSON.stringify({
			location: 'avion'
		  }));
	  });
  
	  $('.bote').on('click', function(e){
		$.post('http://esx_identity/tipollegada', JSON.stringify({
			location: 'bote'
		  }));
	  }); 

	  $('.btn-outline').on('click', function(e){
		$.post('http://esx_identity/terminacorrido', JSON.stringify({
		
		  }));
	  }); 

	$("#register").submit(function(event) {
		event.preventDefault() // Prevent form from submitting
			
		// Verify date
		var date = $("#dateofbirth").val()
		var dateCheck = new Date($("#dateofbirth").val())
	
		if (dateCheck == "Invalid Date") {
			date == "invalid"
		} else {
			const ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(dateCheck)
			const mo = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(dateCheck)
			const da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(dateCheck)
			
			var formattedDate = `${da}/${mo}/${ye}`
	
			$.post('http://esx_identity/register', JSON.stringify({
				firstname: $("#firstname").val(),
				lastname: $("#lastname").val(),
				dateofbirth: formattedDate,
				sex: $("input[type='radio'][name='sex']:checked").val(),
				height: $("#height").val()
			}))
		}
	})

	
})