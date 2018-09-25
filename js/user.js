$(document).ready(function(){


		$.ajax({

			url: 'https://jsonplaceholder.typicode.com/users',
			method: 'GET',
			success: function(response){

				console.log(response);
				var users = response;
				var output = '';

				for(var i = 0; i < users.length; i++){
					output += '<p>' + users[i].name + '<br />' + users[i].address.street + ' ' +users[i].address.suite + ' ' + users[i].address.city + ' ' + users[i].address.zipcode + '</p>';
				}

				$('#users').html(output);
			}

		});
	
});


/*
var xhr = new XMLHttpRequest();
var userBtn = document.getElementById('trigger');

userBtn.onclick = function(){

			var users = JSON.parse(xhr.responseText);
			var output = '';

			for(var i = 0; i < users.length; i++){
				output += '<p>' + users[i].name + '<br />' + users[i].address.street + ' ' +users[i].address.suite + ' ' + users[i].address.city + ' ' + users[i].address.zipcode + '</p>';
			}

			document.getElementById('users').innerHTML = output;
		};

xhr.open('GET', 'https://jsonplaceholder.typicode.com/users', true);
xhr.send();*/