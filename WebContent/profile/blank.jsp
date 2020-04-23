<!DOCTYPE html>
<%@page import="bean.common" %>
<html xmlns="http://www.w3.org/1999/xhtml">
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
                    <a class="navbar-brand" href="home.jsp">
                        <img style="max-width:100px; margin-top: -7px;" src="http://localhost:8080/Registration/assets/img/cp.png" />
                    	communityportal  
                    </a>
                </div>
              
                 <span class="logout-spn" >
           
							<%
							    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
							%>
							You are not logged in<br/>
							<a href="../index.jsp">Please Login</a>
							<%} else {
							%>
							<strong>Welcome, <i><%=session.getAttribute("username")%></i> ! </strong>
							<%
							    }
							%>
							<br>
						<span class="logout-spn" >
		                  <a href="logout.jsp" style="color:#fff;">LOGOUT</a>  
		                </span>
   					</span>	
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 
				    <li class="active-link">
                        <a href="home.jsp" ><i class="fa fa-desktop"></i>Home</a>
                    </li>
                   
                    <li>
                        <a href="blank.jsp"><i class="fa fa-users fa"></i>My Network</a>
                    </li>

	                <li>
	                     <a href="blank.jsp"><i class="fa fa-qrcode "></i>Jobs</a>
                    </li>
                    
                    <li>
                        <a href="blank.jsp"><i class="fa fa-comments-o fa"></i>Messaging</a>
                    </li>

                    <li>
                        <a href="blank.jsp"><i class="fa fa-bell-o fa"></i>Notifications</a>
                    </li>
                    
                    <li>
                        <a href="blank.jsp"><i class="fa fa-user"></i>Profile</a>
                    </li>
                    
                    <li>
                        <a href="blank.jsp"><i class="fa fa-edit "></i>Work</a>
                    </li>
                    
                    <li>
                        <a href="blank.jsp"><i class="fa fa-bar-chart-o "></i>Learning</a>
                    </li>                 
                </ul>
             </div>
        </nav>
        
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>BLANK PAGE </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        
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
