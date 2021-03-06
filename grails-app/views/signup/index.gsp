<html>
<head>
	<!-- Ruby's branch: Add stuff to header.gsp: Crypto.js -->
	<g:render template="/layouts/header" />
	
</head>
<body>
	<g:render template="/layouts/navbar" />		
	<div id='container'>
		<center>
			<div class="row">
				<div class="col-md-3 col-md-offset-5">
					<div class="panel panel-default" id="registerpanel">
						<div class="panel-heading">
							<h3 class="panel-title">Register for Itinerate Today!</h3>
						</div>
						<div class="panel-body">
							<g:form role="form" class="searchform" controller="signup" action="submit_form">
							<div> <label for="username"> Username </label></div>
							<br>
							<div class="form-group" id="username">
								<input type="text" class="form-control" id="username" name="username">
							</div>

							<div><label>Email Address</label></div>
							<br>
							<div class="form-group" id="schoolemail">
								<input type="text" class="form-control" id="schoolemail" name="schoolemail" placeholder="ex. myemail@gmail.com">
							</div>

							<div> <label>Password </label></div>
							<br>
							<div class="form-group" id="password">
								<input type="text" class="form-control" id="password" name="password">
							</div>

							<input id="secure_pwd" type="hidden" value="" name="securePwd"/>

							<br>
							<button type="submit" class="btn btn-default" id="submitbutton">Register!</button>
						</g:form>
					</div>
				</center>
			</div>
		</div>
	</div>
	<script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/md5.js"></script>
	<script>
	$('#password').change(function() {
		var hash = CryptoJS.SHA1($('#password').val());
		$('#secure_pwd').val(hash);
	});
	</script>
</body>
</html>