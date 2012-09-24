$(document).ready(function(){

// login connections

	$("#login-form").submit(function(){
	
		if( isLoginFormEmpty() === 0 ){
			
			sendAjaxForm("login");
			localStorage.email= $("#login-email").val();
			window.location = "index.cfm";

		} else {

				alert("fill up!")

		}

		return false;

	});




	function isLoginFormEmpty(){

		var flag = 0;

		$("#login-form input").each(function(){

			if( !$.trim(this.value).length ){
					
					switch(this.id){

						case "login-email" :
						flag = 1;
						break;

						case "login-pw" :
						flag = 1;
						break;

					}

			}

		});

		return flag;

	}



// ------------------------------------------------------------------




// register connections

	$("#reg-form").submit(function(){

		if( isRegisterFormEmpty() === 0 ){
		
			if( isValidEmail( $("#reg-email").val() ) ){
		
				if( $("#reg-pw").val() === $("#reg-confirm-pw").val() ){

					sendAjaxForm("register");
					localStorage.email= $("#reg-email").val();
					window.location = "index.cfm";					

				} else { // passwords do not match

					alert("Passwords do not match");

        }	

			} else { // email not valid

				alert("Not valid email");

      }


		} else {

			alert("Fill it up!");

		}
		
		return false;

	});


	
	function sendAjaxForm(s){
			
			if( s === "login" ){

					$.ajax({

						type : "POST",

						url : "process_login.cfm",

						data : {

							email : $("#login-email").val(),
							password : $("#login-pw").val()

						},

						success : function(res){
							// do nothing
						}

					});

			}
			else if( s === "register" ){
			
					$.ajax({

						type : "POST",

						url : "process_reg.cfm",

						data : {

							email : $("#reg-email").val(),
							username : $("#reg-name").val(),
							password : $("#reg-pw").val()

						},

						success : function(res){

							// rm whitespace from res
							if( $.trim(res) === "taken" ){

								alert("Error");	
	
							}
					  }

					});

		  }

	}



	function isValidEmail(email){

		return /\S+@\S+\.\S+/.test(email);

	}



	function isRegisterFormEmpty(){

		var flag = 0;

		$("#register-pg input").each(function(){

			if( !$.trim(this.value).length ){

				switch( this.id ){

					case "reg-email" :
					flag = 1;
					break;

					case "reg-name" :
					flag = 1;
					break;

					case "reg-pw" :
					flag = 1;
					break;

					case "reg-confirm-pw" :
					flag = 1;
					break;

			 }

		 }
 
		});

		return flag;		

	}
	
});
