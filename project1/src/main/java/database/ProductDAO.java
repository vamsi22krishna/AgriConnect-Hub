package database;

import database.Product;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/farmers_market";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public boolean addProduct(Product product) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement("INSERT INTO products (name, price) VALUES (?, ?)")) {

            statement.setString(1, product.getName());
            statement.setDouble(2, product.getPrice());

            return statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM products")) {

            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
                product.setPrice(resultSet.getDouble("price"));
                products.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }
    
//    add on 10
    
    public List<Product> searchProducts(String searchTerm) {
        List<Product> searchResults = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM products WHERE name LIKE (?)")) {

            statement.setString(1, "%" + searchTerm + "%");

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Product product = new Product();
                    product.setId(resultSet.getInt("id"));
                    product.setName(resultSet.getString("name"));
                    product.setPrice(resultSet.getDouble("price"));
                    searchResults.add(product);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return searchResults;
    }
}

