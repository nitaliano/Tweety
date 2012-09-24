<!DOCTYPE html>
<html>
<head>
	<title>Tweety Login</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/index.css" />
	
</head>
<body>
	
	<div id="nav" class="navbar navbar-fixed-top">
		
		<div id="login-wrapper" class="container">
			<h2 class="span1" style="color: white; margin-left: 0px;">Tweety</h2>
			<form class="span7 form-inline" id="login-form">
				<div class="span8 offset3">
  					<div class="span3"><input name="login-email" id="login-email" type="text" class="input-medium" placeholder="Email"></div>
  					<div class="span3"><input name="login-pw" id="login-pw" type="password" class="input-medium" placeholder="Password"></div>
  					<div class="span1"><button name="login-btn" id="login-btn" type="submit" class="btn">Login</button></div>
				</div>
			</form>
		</div>

	</div>
		
	<div id="pages" class="container">
		
		<div id="header-space" class="row"> </div>
		<div class="row">
			
			<div id="register-pg" class="container">
				
				<h1 class="span4">Sign up today!</h1>
				
				<form action="#" id="reg-form" class="span5 offset2 form-horizontal" style="margin-top: 20px;">
					
  					<div class="control-group">
    					<label class="control-label" for="reg-email">Email</label>
    					<div class="controls">
      						<input type="text" name="reg-email" id="reg-email" placeholder="Email">
    					</div>
  					</div>
					
					<div class="control-group">
    					<label class="control-label" for="reg-name">Name</label>
    					<div class="controls">
      						<input type="text" name="reg-name" id="reg-name" placeholder="First Last">
    					</div>
  					</div>
					
  					<div class="control-group">
    					<label class="control-label" for="reg-pw">Password</label>
    					<div class="controls">
      						<input type="password" name="reg-pw" id="reg-pw" placeholder="Password">
    					</div>
  					</div>
					
					<div class="control-group">
    					<label class="control-label" for="reg-confirm-pw">Password</label>
    					<div class="controls">
      						<input type="password" name="reg-confirm-pw" id="reg-confirm-pw" placeholder="Confirm Password">
    					</div>
  					</div>
					
  					<div class="control-group">
    					<div class="controls">
      						<button name="reg-btn" id="reg-btn" class="btn" type="submit">Register</button>
    					</div>
  					</div>
					
				</form>

	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
	<script src="js/index.js"></script>
	
</body>
</html>
