package com.resumebuilder.org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resumebuilder.org.util.ProjectUtility;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(value="/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpServletResponse resp =(HttpServletResponse) response;
		
		String uName =  request.getParameter("uname");
		String pwd =  request.getParameter("psw");
		
		System.out.println("username check : " + uName + " checked : " + uName.equals("aditikapoor6666@gmail.com"));
		System.out.println("password check : " + pwd + " checked : " + pwd.equals("admin"));
		
		if(uName.equals("aditikapoor6666@gmail.com") && pwd.equals("admin")) {
			System.out.println("Session starts");
			HttpSession session = request.getSession( );
			session.setAttribute("user", uName);
			response.sendRedirect(request.getContextPath() + "/form.jsp");
		}else {
			out.println("Wrong credentials!");
			out.println("<a href=\"/ResumeBuilder/login.jsp\">Login</a>");
			
			out.close();
			
			
		}
		
	}

}
