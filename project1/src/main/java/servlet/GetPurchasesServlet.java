////GetPurchasesServlet.java
//package servlet;
//
//import java.io.IOException;
//import java.util.List;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import com.google.gson.Gson;
//
//import database.Product;
//import database.Purchase;
//import database.PurchaseDAO;
//
//@WebServlet("/GetPurchasesServlet")
//public class GetPurchasesServlet extends HttpServlet {
// private static final PurchaseDAO purchaseDAO = new PurchaseDAO();
//
// protected void doGet(HttpServletRequest request, HttpServletResponse response)
//         throws ServletException, IOException {
//     response.setContentType("application/json");
//     response.setCharacterEncoding("UTF-8");
//
//     // Retrieve all purchases from the database
//     List<Purchase> purchases = purchaseDAO.getAllPurchases();
//
////     // Convert purchases to JSON and send the response
////     Gson gson = new Gson();
////     String jsonResponse = gson.toJson(purchases);
////     response.getWriter().write(jsonResponse);
//// }
////}
//     response.setContentType("application/json");
//     response.setCharacterEncoding("UTF-8");
//
//     // Convert purchase to JSON and send the response
//     StringBuilder jsonResponse = new StringBuilder("[");
//     for (Purchase purchase : purchases) {
//         jsonResponse.append("{\"customerName\":").append(purchase.getCustomerName()).append(",");
//         jsonResponse.append("\"productName\":\"").append(purchase.getProductName()).append("\",");
//         jsonResponse.append("\"productPrice\":").append(purchase.getProductPrice()).append("},");
//     }
//     if (jsonResponse.charAt(jsonResponse.length() - 1) == ',') {
//         jsonResponse.deleteCharAt(jsonResponse.length() - 1); // Remove the trailing comma
//     }
//     jsonResponse.append("]");
//
//     response.getWriter().write(jsonResponse.toString());
// }
//}



package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.Purchase;
import database.PurchaseDAO;

@WebServlet("/GetPurchasesServlet")
public class GetPurchasesServlet extends HttpServlet {
    private static final PurchaseDAO purchaseDAO = new PurchaseDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Retrieve all purchases from the database
        List<Purchase> purchases = purchaseDAO.getAllPurchases();

        // Convert purchases to JSON and send the response
        StringBuilder jsonResponse = new StringBuilder("[");
        for (Purchase purchase : purchases) {
            jsonResponse.append("{");
            jsonResponse.append("\"customerEmail\":\"").append(purchase.getCustomerEmail()).append("\",");
            jsonResponse.append("\"productName\":\"").append(purchase.getProductName()).append("\",");
            jsonResponse.append("\"productPrice\":").append(purchase.getProductPrice());
            jsonResponse.append("},");
        }
        if (!purchases.isEmpty()) {
            jsonResponse.deleteCharAt(jsonResponse.length() - 1); // Remove the trailing comma
        }
        jsonResponse.append("]");

        response.getWriter().write(jsonResponse.toString());
    }
}

