package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.ProductDAO;
import database.Product;
import java.util.List;
/**
 * Servlet implementation class GetProductServlet
 */
@WebServlet("/GetProductServlet")
public class GetProductServlet extends HttpServlet {
	
		 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        ProductDAO productDAO = new ProductDAO();
		        List<Product> products = productDAO.getAllProducts();

		        response.setContentType("application/json");
		        response.setCharacterEncoding("UTF-8");

		        // Convert products to JSON and send the response
		        StringBuilder jsonResponse = new StringBuilder("[");
		        for (Product product : products) {
		            jsonResponse.append("{\"id\":").append(product.getId()).append(",");
		            jsonResponse.append("\"name\":\"").append(product.getName()).append("\",");
		            jsonResponse.append("\"price\":").append(product.getPrice()).append("},");
		        }
		        if (jsonResponse.charAt(jsonResponse.length() - 1) == ',') {
		            jsonResponse.deleteCharAt(jsonResponse.length() - 1); // Remove the trailing comma
		        }
		        jsonResponse.append("]");

		        response.getWriter().write(jsonResponse.toString());
		    }
		}