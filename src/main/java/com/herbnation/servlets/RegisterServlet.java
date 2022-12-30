package com.herbnation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.herbnation.entities.User;
import com.herbnation.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try {
			
			String userName = request.getParameter("user_name");
			String userEmail = request.getParameter("user_email");
			String userPassword = request.getParameter("user_password");
			String userPhone = request.getParameter("user_phone");
			String userDob = request.getParameter("user_dob");
			String userAddress = request.getParameter("user_address");
			String userPicture = request.getParameter("user_picture");
			String userType = request.getParameter("user_type");
			
			if(userName.isEmpty())
			{
				out.println("Name is blank");
				return;
			}
			else if(userEmail.isEmpty())
			{
				out.println("Email is blank");
				return;
			}
			else if(userPassword.isEmpty())
			{
				out.println("Password is blank");
				return;
			}
			
			User user = new User(userName, userEmail, userPassword, userPhone, userDob, userPicture, userAddress, userType);
			
			Session hiberSession = FactoryProvider.getFactory().openSession();
			Transaction tx =  hiberSession.beginTransaction();
			
			int userId = (Integer) hiberSession.save(user);
			
			tx.commit();
			hiberSession.close();
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Registration Successfully done !! \n Your user id is : "+userId);
			response.sendRedirect("signUp.jsp");
			return;
			
		}catch(Exception e)
		{
			e.printStackTrace();		}
	}

}
