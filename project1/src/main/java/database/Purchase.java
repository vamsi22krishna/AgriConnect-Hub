package database;

//Purchase.java


public class Purchase {
 private String customerName;
 private String customerEmail;
 private String productName;
 private double productPrice;

 // Constructors
 public Purchase() {
 }

 public Purchase(String customerName, String customerEmail, String productName, double productPrice) {
     this.customerName = customerName;
     this.customerEmail = customerEmail;
     this.productName = productName;
     this.productPrice = productPrice;
 }

 // Getters and Setters
 public String getCustomerName() {
     return customerName;
 }

 public void setCustomerName(String customerName) {
     this.customerName = customerName;
 }

 public String getCustomerEmail() {
     return customerEmail;
 }

 public void setCustomerEmail(String customerEmail) {
     this.customerEmail = customerEmail;
 }

 public String getProductName() {
     return productName;
 }

 public void setProductName(String productName) {
     this.productName = productName;
 }

 public double getProductPrice() {
     return productPrice;
 }

 public void setProductPrice(double productPrice) {
     this.productPrice = productPrice;
 }
}
