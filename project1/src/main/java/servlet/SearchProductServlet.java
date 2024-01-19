package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import database.Product;
import database.ProductDAO;

@WebServlet("/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String searchTerm = request.getParameter("searchTerm");

        if (searchTerm != null && !searchTerm.isEmpty()) {
            ProductDAO productDAO = new ProductDAO();
            List<Product> searchResults = productDAO.searchProducts(searchTerm);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            // Convert search results to JSON and send the response
            Gson gson = new Gson();
            String jsonResponse = gson.toJson(searchResults);
            System.out.println("JSON Response: " + jsonResponse);
            response.getWriter().write(jsonResponse);
        } else {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Invalid search term");
        }
    }
}
