package main.resources;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("password.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String newPassword = request.getParameter("new-password");
			String email = request.getParameter("new-login-email");
			System.out.println("newPassword " + newPassword);
		
			UserDao userDao = new UserDao(DBCon.getConnection());

	        //UPDATE USER
	        boolean result = userDao.changePassword(email, newPassword) ;
	        if (result) {
	        	response.sendRedirect("login.jsp");
	        } 
	            
	        } catch (ClassNotFoundException|SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
	}

}
