<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="bean.common"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Community Portal</title>

<!--===============================================================================================-->
<!-- BOOTSTRAP STYLES-->
<link href="<%=common.url %>/assets/css/bootstrap.css" rel="stylesheet" />
<!--===============================================================================================-->
<!-- FONTAWESOME STYLES-->
<link href="<%=common.url %>/assets/css/font-awesome.css"
	rel="stylesheet" />
<!--===============================================================================================-->
<!-- CUSTOM STYLES-->
<link href="<%=common.url %>/assets/css/custom.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<%=common.url %>/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"	href="<%=common.url %>/assets/fonts/iconic/css/material-design-iconic-font.min.css">	
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<%=common.url %>/assets/css/util.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"	href="<%=common.url %>/assets/css/main.css">
<!--===============================================================================================-->

<script>
function validateForm() {
  var username = document.forms["myForm"]["uname"].value;
  var password = document.forms["myForm"]["pass"].value;
  if (username == "" || password == "") {
    alert("username or password is blank");
    return false;
  }
}
</script>

</head>
<body>
	<div id="wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="signin.jsp"> <img
						style="max-width: 100px; margin-top: -7px;"
						src="http://localhost:8080/Registration/assets/img/cp.png" />
						communityportal
					</a>

				</div>
				<span class="logout-spn"> <span class="logout-spn">
						<a href="../index.jsp" style="color: #fff;">Home</a>
				</span>

				</span>
			</div>
		</div>
		
	</div>
	
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('<%=common.url %>/assets/img/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form name="myForm" onsubmit="return validateForm()" method="post"
					action="signinValidation.jsp" class="login100-form validate-form">
					<span class="login100-form-title p-b-49"> SIGN IN </span>

					<div class="wrap-input100 validate-input m-b-23"
						data-validate="Username is required">
						<span class="label-input100">Username</span> <input
							class="input100" type="text" name="uname"
							placeholder="Type your username"> <span
							class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name="pass"
							placeholder="Type your password"> <span
							class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

					<div class="text-right p-t-8 p-b-31">
						<a href="#"> Forgot password? </a>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">Sign in</button>
						</div>
						
						<span style="color:red;">${errMsg}</span>
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17"> Not a member? </span> <a
							href="registration.jsp" class="txt2"> Register </a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="footer">
		<div class="row">
			<div class="text-center">&copy; 2020 | communityportal</div>
		</div>
	</div>
	
		<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="<%=common.url %>/assets/js/jquery-1.10.2.js"></script>

	<!-- BOOTSTRAP SCRIPTS -->
	<script src="<%=common.url %>/assets/js/bootstrap.min.js"></script>

	<!-- CUSTOM SCRIPTS -->
	<script src="<%=common.url %>/assets/js/custom.js"></script>
	
	<script src="<%=common.url %>/assets/js/main.js"></script>
</body>
</html>