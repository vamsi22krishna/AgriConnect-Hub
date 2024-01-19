<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        section {
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        input[type="text"] {
            padding: 5px;
        }

        #searchSection {
            margin-bottom: 20px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
    <header>
        <h1>Welcome, Customer!</h1>
    </header>

    <section id="searchSection">
        <h2>Search Products</h2>
        <input type="text" id="searchInput" placeholder="Enter product name">
        <button onclick="searchProducts()">Search</button>
    </section>

    <section id="productsSection">
        <h2>Available Products</h2>
        <ul id="productsList"></ul>
    </section>

    <section id="cartSection">
        <h2>Your Cart</h2>
        <ul id="cartList"></ul>
    </section>

    <script>
        $(document).ready(function () {
            updateProductsSection();
            setInterval(updateProductsSection, 30000);
        });

        function searchProducts() {
            var searchTerm = $("#searchInput").val();
            $.ajax({
                type: "POST",
                url: "SearchProductServlet",
                data: {
                    searchTerm: searchTerm
                },
                success: function(products) {
                    var productsHtml = "";
                    $.each(products, function(index, product) {
                        productsHtml += "<li>" + product.name + ": Rs" + product.price +
                                        " <button onclick='addToCart(" + product.id + ")'>Add to Cart</button></li>";
                    });
                    $("#productsList").html(productsHtml);
                },
                error: function() {
                    alert("Error occurred while searching for products.");
                }
            });
        }

        function updateProductsSection() {
            $.ajax({
                type: "GET",
                url: "GetProductServlet",
                success: function(products) {
                    var productsHtml = "";
                    $.each(products, function(index, product) {
                        productsHtml += "<li>" + product.name + ": Rs" + product.price +
                                        " <button onclick='addToCart(" + product.id + ")'>Buy now</button></li>";
                    });
                    $("#productsList").html(productsHtml);
                },
                error: function() {
                    alert("Error occurred while fetching products.");
                }
            });
        }

        function addToCart(productId) {
            
            var customerName = "varun";
            var customerEmail = "varun@gmail.com";

            $.ajax({
                type: "POST",
                url: "AddToCartServlet",
                data: {
                    productId: productId,
                    customerName: customerName,
                    customerEmail: customerEmail
                },
                success: function(response) {
                    if (response.success) {
                        updateCartSection();
                        alert("Product added to the cart successfully.");
                        //window.location.href = "index.jsp";
                        window.location.href = "tocart.html";
                        
                    } else {
                        alert("Failed to add product to the cart. Please try again.");
                    }
                },
                error: function() {
                    alert("Error occurred while communicating with the server.");
                }
            });
        }

        function updateCartSection() {
            $.ajax({
                type: "GET",
                url: "GetCartServlet",
                success: function(cartItems) {
                    var cartHtml = "";
                    $.each(cartItems, function(index, item) {
                        cartHtml += "<li>" + item.productName + ": Rs" + item.productPrice + "</li>";
                    });
                    $("#cartList").html(cartHtml);
                },
                error: function() {
                    //alert("Error occurred while fetching the cart items.");
                }
            });
        }
    </script>
</body>
</html>
