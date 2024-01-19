// PurchaseDAO.java
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PurchaseDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/farmers_market";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public boolean addPurchase(Purchase purchase) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(
                     "INSERT INTO purchases (customer_name, customer_email, product_name, product_price) VALUES (?, ?, ?, ?)")) {

            statement.setString(1, purchase.getCustomerName());
            statement.setString(2, purchase.getCustomerEmail());
            statement.setString(3, purchase.getProductName());
            statement.setDouble(4, purchase.getProductPrice());

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public List<Purchase> getAllPurchases() {
        List<Purchase> purchases = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM purchases");
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Purchase purchase = new Purchase();
//                purchase.setCustomerName(resultSet.getString("customer_name"));
                purchase.setCustomerEmail(resultSet.getString("customer_email"));
                purchase.setProductName(resultSet.getString("product_name"));
                purchase.setProductPrice(resultSet.getDouble("product_price"));
                purchases.add(purchase);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return purchases;
    }
}
