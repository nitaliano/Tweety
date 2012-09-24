$(document).ready(function(){

// display tweetys

	displayTweetys();

	function displayTweetys(){

		$.ajax({

			url : "displaytweetys.cfm",


			data : {

				sourceId : localStorage.email

			},

			success : function(res){

				$("#tweety-result").html(res);

			}

		});


	}

//-----------------------------------------------------------------



// nav bar connections

	$(".nav-a-btn").click(function(){
		
		if( this.id === "home-a" && !$("#home-pg").is(":visible") ){
			hideCurVisiblePage();
			$("#home-pg").css('display', 'block');
			displayTweetys();
		}
		else if( this.id === "account-a" && !$("#account-pg").is(":visible") ){
			hideCurVisiblePage();
			$("#account-pg").css('display', 'block');
		}
		else if( this.id === "findfriend-a" && !$("#findfriend-pg").is(":visible") ){
			hideCurVisiblePage();
			$("#findfriend-pg").css('display', 'block');
		}
		else if( this.id === "logout-a" ){
			window.location = "login.cfm"
		}
		
	});
	



	function hideCurVisiblePage(){
		
		if($("#home-pg").is(":visible")){
			$("#home-pg").css('display', 'none');
		}
		else if($("#account-pg").is(":visible")){
			$("#account-pg").css('display', 'none');
		}
		else if($("#findfriend-pg").is(":visible")){
			$("#findfriend-pg").css('display', 'none');
		}
		
	}



// -----------------------------------------------------------


// using html5 localstorage to store current user email

	getUserName();


	function getUserName(){	

		$.ajax({

			url : "getuserdata.cfm",		

			data : {

				email : localStorage.email

			},

			success : function(res){

				$("#h4-name").html(res);
				$("#h5-email").html(localStorage.email);			

			}

		});

	}


// -------------------------------------------------------------


// submit tweety

	$('#tweety-btn').click(function(){
		
		if( $("#tweety-txt-box").val().length < 201 ){
			$.ajax({

				url : "inserttweety.cfm",

				data : {

					userEmail : localStorage.email,
					tweetyMsg : $("#tweety-txt-box").val()

				},

				success : function(res){

					alert(res);

				}

			});

	 } else {

		alert("Tweety is to big must be under 200 chars");

	 }

	});


//------------------------------------------------------------------



// adds friend to follow

	$("#friend-result button").live("click",function(e){

		var curId = this.id;
		$(this).remove();

		$.ajax({

			url : "following.cfm",

			data : {

				sourceId : localStorage.email,
				targetId : curId

			},

			success : function(res){
				// do nothing
			}

		});

	});


// ---------------------------------------------------------------



// autocomplete for finding a friend


	$("#findfriend-form").submit(function(e){
		e.preventDefault();
	});

	$("#friend-txt").keyup(function(e){

		var str = $("#friend-txt").val();

		if( !$.trim(str).length ){

			$("#friend-result").html("");

		}		
		else if( e.keyCode == 8 && $.trim(str).length ){

			AutoComplete(str);

		} else {		

			AutoComplete(str);

		}

	});




	function AutoComplete(str){

		$.ajax({

				url : "autocomplete.cfm",

			  data : {

					autoCompleteString : str,

					userEmail : localStorage.email

				},

				success : function(res){
					
					$("#friend-result").html(res);

				}

			});


	}

// --------------------------------------------------------

});
