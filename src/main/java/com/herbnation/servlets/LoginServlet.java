package com.herbnation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.herbnation.dao.UserDao;
import com.herbnation.entities.User;
import com.herbnation.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String userEmail = request.getParameter("user_email");
		String userPassword = request.getParameter("user_password");
		
		if(userEmail.isEmpty())
		{
			out.println("Email is blank");
			return;
		}
		else if(userPassword.isEmpty())
		{
			out.println("Password is blank");
			return;
		}
		
		UserDao userDao = new UserDao(FactoryProvider.getFactory());
		User user = userDao.getUserByEmailAndPassword(userEmail, userPassword);
		
		HttpSession httpSession = request.getSession();
		
		if(user == null)
		{
			httpSession.setAttribute("message", "Invalid Details !! Try with another one");
			response.sendRedirect("login.jsp");
			return;
		}
		else
		{
			
			httpSession.setAttribute("current-user", user);
			
			if(user.getUserType().equals("Admin"))
			{
				response.sendRedirect("admin_panel.jsp");
			}
			else if(user.getUserType().equals("Customer"))
			{
				response.sendRedirect("index.jsp");
			}
			else
			{
				out.println("unable to identify user type");
			}
		}
	}

}
