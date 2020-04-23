<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/communityportal",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + username + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        //out.println("welcome " + username);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
    } else {
    	request.setAttribute("errMsg", "username or password is incorrect");
	    // The following will keep you in the login page
	    RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
	    rd.forward(request, response);     
    }
%>