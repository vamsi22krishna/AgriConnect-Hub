// GetCartServlet.java
package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import database.CartDAO;
import database.CartItem;

@WebServlet("/GetCartServlet")
public class GetCartServlet extends HttpServlet {
    private final CartDAO cartDAO = new CartDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Assuming you have the customer's name available, replace "John Doe" with the actual customer's name
        String customerName = "varun";

        // Retrieve cart items from the database
        List<CartItem> cartItems = cartDAO.getAllCartItems(customerName);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Convert cart items to JSON and send the response
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(cartItems);
        response.getWriter().write(jsonResponse);
    }
}
