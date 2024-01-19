package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLIntegrityConstraintViolationException;

import database.MyConnection;
import database.User;
import database.UserDb;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public RegisterServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String userrole = req.getParameter("userrole");
        out.println("servlet created");
        User userModel = new User(name, email, phone, password, userrole);
        UserDb regUser = new UserDb(MyConnection.getConnection());

        if (regUser.saveUser(userModel)) {
            res.sendRedirect("Login.jsp");
        } else {
            String errMsg = "User Alredy Available";
            
            HttpSession regSession = req.getSession();
            regSession.setAttribute("RegError", errMsg);
            res.sendRedirect("Registration.jsp");
            
       }
    }
}