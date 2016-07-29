$(document).on('ready', function() {
    
	var getCharacters = function() {
		 $.ajax({
        	type: "GET",
        	url: "http://ironhack-characters.herokuapp.com/characters",
        	success: showCharacters,
         	error: handleError
        });
	};

	$('#my_button').on('click', function() {
		getCharacters();
     });

	function showCharacters (response){
			var charactersArray = response;

			charactersArray.forEach(function (theCharacter){
				var html = `<li> 
				<h2>${theCharacter.name}
				<br>
				${theCharacter.occupation}
				<br>
				${theCharacter.weapon}
				<br>
				${theCharacter.debt}</h2>				
				</li>`;
				$('.js-character-list').append(html);
			});
	};

	function handleError (error){
		console.log("Error!");
		console.log(error.responseText);
	};

	function validateForm(){
		var emptyCounter = 0;
		$('.required').each(function(idx, ele) {
			if ( $(ele).val() === "") {
				emptyCounter++;
			}
		});
			return emptyCounter
			if(emptyCounter !== 0){
				alert("Please fill in all the required elements!");
			}
	};

	$('#my_form').on('submit', function(event) {
		event.preventDefault();
		if (validateForm() === 0){
			var formData = $(this).serializeArray();
			console.log(formData);	
			$.ajax({
				type: "POST",
				url: "http://ironhack-characters.herokuapp.com/characters",
				data: formData,
				success: function(response){
					getCharacters();
        		},
        		error: handleError
        	});
		} else {	
			alert("Form is invalid!")
		}
	});
});