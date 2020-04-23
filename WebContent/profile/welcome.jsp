<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="bean.common" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Community Portal</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="<%=common.url %>/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="<%=common.url %>/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="<%=common.url %>/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>

 <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img style="max-width:100px; margin-top: -7px;" src="http://localhost:8080/Registration/assets/img/cp.png" />
                    	communityportal  
                    </a>
                </div>
              
                 
            </div>
        </div>
        
     
  
        <div class="jumbotron text-center">
			  <h1 class="display-3"> Hi <strong class="text-success">${name},</strong> <br> Thank you for registering!</h1>
			  <hr>
			  <p class="lead">
			    <a class="btn btn-primary btn-sm" href="profile/signin.jsp" role="button">Continue to Login</a>
			  </p>
		</div>         

 </div>

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   		 <div class="footer">
            <div class="row">
                <div class="text-center" >
                    &copy;  2020 | communityportal
                </div>
            </div>
        </div>
          

    <!-- /. WRAPPER  -->
    
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="<%=common.url %>/assets/js/jquery-1.10.2.js"></script>
    
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="<%=common.url %>/assets/js/bootstrap.min.js"></script>
    
    <!-- CUSTOM SCRIPTS -->
    <script src="<%=common.url %>/assets/js/custom.js"></script>
        
</body>
</html>