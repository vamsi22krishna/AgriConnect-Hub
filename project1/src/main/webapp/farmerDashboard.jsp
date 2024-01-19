<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Dashboard</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
            text-align: center;
            padding: 1em;
        }

        section {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome, Farmer!</h1>
    </header>

    <section>
        <h2>Add Product</h2>
        <form id="addProductForm">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>

            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="productPrice" required>

            <button type="button" onclick="addProduct()">Add Product</button>
        </form>
    </section>
    <section id="productsSection">
        <h2>Available Products</h2>
        <ul id="productsList"></ul>
    </section>

    <section id="purchasesSection">
        <h2>Customer Purchases</h2>
        <ul id="purchasesList"></ul>
    </section>
    <script>
        function addProduct() {
            var productName = $("#productName").val();
            var productPrice = $("#productPrice").val();

            $.ajax({
                type: "POST",
                url: "AddProductServlet",
                data: {
                    productName: productName,
                    productPrice: productPrice
                },
                success: function(response) {
                    if (response.success) {
                        updateProductsSection();
                        alert("product added successfully");
                    } else {
                        alert("Failed to add product. Please try again.");
                    }
                },
                error: function() {
                    alert("Error occurred while communicating with the server.");
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
                        productsHtml += "<li>" + product.name + ": Rs" + product.price + "</li>";
                    });
                    $("#productsList").html(productsHtml);
                },
                error: function() {
                    alert("Error occurred while fetching products.");
                }
            });
        }

        // Initial update of products when the page loads
        updateProductsSection();
        
     // Inside your existing JavaScript code in the farmer's page

         function updatePurchasesSection() {
            $.ajax({
                type: "GET",
                url: "GetPurchasesServlet",
                success: function(purchases) {
                    var purchasesHtml = "";
                    $.each(purchases, function(index, purchase) {
                       purchasesHtml += "<li>" + purchase.customerEmail + " bought " + purchase.productName + " for Rs" + purchase.productPrice + "</li>";
                    	// purchasesHtml += "<li>" + purchase.customerName + " bought " + purchase.productName + " for $" + purchase.productPrice +"Email"+purchase.customerEmail + "address" + purchase.address"</li>";
                    });
                    $("#purchasesList").html(purchasesHtml);
                },
                error: function() {
                    alert("Error occurred while fetching purchases.");
                }
            });
        }

        // Call this function to update the farmer's page periodically
        setInterval(updatePurchasesSection, 10000);

    </script>
</body>
</html>
