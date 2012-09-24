<!DOCTYPE html>
<html>
<head>
	<title>Tweety</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/index.css" />
	
</head>
<body>
	
	<div id="nav" class="navbar navbar-fixed-top">
		
		<div id="nav-wrapper" class="container">
			<h2 class="span2" style="color: white; margin-left: 0px; cursor: pointer;">Tweety</h2>
			<ul id="nav-ul" class="nav nav-pills">
				<li><a class="nav-a-btn" id="home-a" href="#">Home</a></li>
				<li><a class="nav-a-btn" id="account-a" href="#">Upload</a></li>
				<li><a class="nav-a-btn" id="findfriend-a" href="#">Find-A-Friend</a></li>
				<li><a class="nav-a-btn" id="logout-a" href="#">Logout</a></li>
			</ul>	
		</div>

	</div>
		
	<div id="pages" class="container">
		
		<div id="header-space" class="row"> </div>
		
		<div class="row">
			
			<div id="fixed-left-col" class="span4">
				
				<h4 id="h4-name">First Last</h4>
				
				<ul class="thumbnails">
  					<li class="span4">
    					<a href="#" class="thumbnail">
      						<img src="http://placehold.it/300x200" alt="">
    					</a>
 					</li>
				</ul>
				
				<h5 id="h5-email">Email</h5>
				
			</div>
		
			<div id="home-pg" class="span7">
				<div id="your-tweet-wrapper" class="span7">
					<textarea id="tweety-txt-box" name="tweety-txt-box" row="3" class="span6"></textarea>
					<button id="tweety-btn" name="tweety-btn" class="btn">Submit</button>
				</div>
				
				<div id="following-tweet-wrapper" class="span7">
					<ul id="tweety-result" class="span7">
					</ul>
				</div>
			</div>
		
			<div id="account-pg" class="span7">
			
			</div>
		
			<div id="findfriend-pg" class="span7">
				<div id="findfriend-content">
					<form id="findfriend-form" class="form-search">
  					<input name="friend-txt" id="friend-txt" type="text" class="span5 input-medium">
  					<button name="findfriend-btn" id="findfriend-btn" class="btn">Search</button>
					</form>
					<br/><br/>
					<ul id="friend-result" class="span7">
					</ul>
				</div>
			</div>
		
		</div>
		
	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
	<script src="js/index-ajax.js"></script>
	<script src="js/index.js"></script>
	
</body>
</html>
