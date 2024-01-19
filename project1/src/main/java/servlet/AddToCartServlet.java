// AddToCartServlet.java
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import database.Purchase;
import database.PurchaseDAO;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final PurchaseDAO purchaseDAO = new PurchaseDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve product details from request parameters
        int productId = Integer.parseInt(request.getParameter("productId"));

        // Fetch customer details
        String customerName = request.getParameter("customerName");
        String customerEmail = request.getParameter("customerEmail");

        // Fetch product details from your database based on the productId
        // (replace this with your actual logic for fetching product details)
        // For example:
        // Product product = productDAO.getProductById(productId);

        // Create a new purchase
        Purchase purchase = new Purchase();
        purchase.setCustomerName(customerName);
        purchase.setCustomerEmail(customerEmail);
        // Set actual product details
        // purchase.setProductName(product.getName());
        // purchase.setProductPrice(product.getPrice());

        // Add the purchase to the database
        purchaseDAO.addPurchase(purchase);

        // Respond with a success message
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"success\":true}");
    }
}
