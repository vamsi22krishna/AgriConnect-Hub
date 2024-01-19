package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.Product;
import database.ProductDAO;
/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/AddProductServlet")

    
    public class AddProductServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String productName = request.getParameter("productName");
            double productPrice = Double.parseDouble(request.getParameter("productPrice"));

            Product product = new Product();
            product.setName(productName);
            product.setPrice(productPrice);

            ProductDAO productDAO = new ProductDAO();
            boolean success = productDAO.addProduct(product);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"success\":" + success + "}");
        }
    }

