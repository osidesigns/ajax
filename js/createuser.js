//Declare Vars
//This file is using jQuery

var fullname = $('#fullName');
var username = $('#username');
var age = $('#age');
var submitBtn = $('button');

submitBtn.on('click', function(e){

		//Prevent the default action of the submit event
		e.preventDefault();

		//Get the value of the fullName input box
		fullName = fullname.val();

		//Get the value of the username input box
		username = username.val();

		//Get the value of the age input box
		age = age.val();

		//Once we capture the values we run our AJAX
		//method to submit the data to our script
		$.ajax({

			method: 'GET',
			url: 'scripts/fileworker.php',
			data: {
				fullName: fullName,
				username: username,
				age:      age
			},
			success: function(response){
				$('#result').html("<p>" + response + "</p>");
			}
		});

});