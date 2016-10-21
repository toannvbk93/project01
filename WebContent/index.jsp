<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Project 01</title>
<!-- navibar -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
_
<!-- navibar -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<!-- Statr header -->
		<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Project 01</a>
		</div>
		</nav>
		<!-- End header -->
		<div class="row">
			<div class="login" style="margin: 5px auto; width: 400px">
				<h2>If you have account:</h2>
				<form class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="email">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" placeholder="Email"
								for="email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>
						</div>
						<div class="col-sm-offset-2 col-sm-10">
							<div>
								<a href="#" style="color: red;">Forgot password</a>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">Sign in</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<h2>If you have not account:</h2>
			<div class="registry">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id='email'
								placeholder="Email">
						</div>
						<h2 id='result'></h2>
					</div>
					</br>
					<div class="form-group">
						<label class="col-sm-2 control-label">Username</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="username"
								placeholder="Username">
							<p id="warning_user"></p>
						</div>
					</div>
					</br>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control"
								placeholder="Password">
						</div>
					</div>
					</br>
					<div class="form-group">
						<label class="col-sm-2 control-label">Department</label>
						<div class="col-sm-10">
							<select class="form-control">
								<option>Department 1</option>
								<option>Department 2</option>
								<option>Department 3</option>
								<option>Department 4</option>
								<option>Department 5</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Birthday</label>
						<div class="col-sm-10">
							<input type="date" class="form-control"
								placeholder="Date of Birth">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Address: </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="Address">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Username</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="Username">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Phonenumber</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" min="0" step="1"
								data-bind="value:replyNumber" placeholder="+80.11111111111" />
						</div>
					</div>
					<button type='submit' id='validate'>Validate!</button>
				</form>

			</div>
		</div>
	</div>
	<script>
		function validateEmail(email) {
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			return re.test(email);
		}
		function validateUsername(username) {
			var re = /[A-Za-z0-9]{1,60}/;
			return re.test(username);
		}
		function validate() {
			$("#result").text("");
			$("#warning_user").text("");
			var email = $("#email").val();
			var username = $("#username").val();
			if (validateEmail(email)) {
				$("#result").text(email + " is valid :)");
				$("#result").css("color", "green");
			} else {
				$("#result").text(email + " is not valid :(");
				$("#result").css("color", "red");
			}
			if (validateUsername(username)) {
				$("#warning_user").text(username + " is valid :)");
				$("#warning_user").css("color", "green");
			} else {
				$("#warning_user").text(username + " is not valid :(");
				$("#warning_user").css("color", "red");
			}
			return false;
		}

		$("form").bind("submit", validate);
	</script>
</body>
</html>