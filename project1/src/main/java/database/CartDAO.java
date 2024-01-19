// CartDAO.java
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/farmers_market";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public List<CartItem> getAllCartItems(String customerName) {
        List<CartItem> cartItems = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM cart_items");
        ) {
//            statement.setString(1, customerName);

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    CartItem cartItem = new CartItem();
                    cartItem.setProductName(resultSet.getString("product_name"));
                    cartItem.setProductPrice(resultSet.getDouble("product_price"));
                    cartItems.add(cartItem);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cartItems;
    }
}
