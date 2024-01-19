package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.MyConnection;
import database.User;
import database.UserDb;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		 
		res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
		String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        String userrole = req.getParameter("userrole");

                UserDb db = new UserDb(MyConnection.getConnection());
	            User user = db.userLogin(email, password);
	                // Authentication successful
	            if (user != null && user.getuserrole().equals(userrole)) {
	                // Redirect to the appropriate dashboard based on user role
	                if ("Farmer".equals(userrole)) {
//	                    res.sendRedirect("farmerDashboard.jsp");
	                	res.sendRedirect("farmerInterface.jsp");
	                } else if ("Customer".equals(userrole)) {
	                    res.sendRedirect("customerDashboard.jsp");
	                }
	            } else {
	                // Authentication failed, redirect back to the login page
	            	out.print("Sorry username or password incorrect");
	                res.sendRedirect("Login.jsp?loginFailed=true");
	            }
	        }
}