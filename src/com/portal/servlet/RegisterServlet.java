package com.portal.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portal.bean.User;
import com.portal.dao.ApplicationDao;


/**
 * Servlet implementation class RegisterServlet
 */
//@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("DB Connect User Name is " + this.getInitParameter("dbconnectUser"));
		//Browser form - servlet
		String firtName = request.getParameter("fname");
	    String lastName = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String username = request.getParameter("uname");    
	    String pwd = request.getParameter("pass");
	    
	    ServletContext servContext = getServletContext();
	    String dbusername = servContext.getInitParameter("dbusername");
	    
	    User userObj = new User();
	    userObj.setFirstname(firtName);
	    userObj.setLastname(lastName);
	    userObj.setEmail(email);
	    userObj.setUname(username);
	    userObj.setPass(pwd);
	    boolean validInfo = true;
		   		     
	    //validation do
	    if(validInfo) {
	    	ApplicationDao daoObj = new ApplicationDao();
		    daoObj.createRegistrationInfo(dbusername, userObj);

		    request.setAttribute("name", firtName );
		    request.getRequestDispatcher("profile/welcome.jsp").forward(request, response);
	    }else {
	    	request.setAttribute("error", "Enter valid details");
	    	request.getRequestDispatcher("profile/registration.jsp").forward(request, response);
	    }
	    
	}

}
