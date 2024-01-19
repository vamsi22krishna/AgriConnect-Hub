<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Interface</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #333;
        }

        .options-container {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        .option-box {
            width: 200px;
            height: 200px;
            background-color: #3498db;
            margin: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            color: #fff;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .option-box:hover {
            background-color: #2980b9;
        }

        h2 {
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <h1>Welcome, Farmer!</h1>

    <div class="options-container">
        <!-- Option 1: Buy Seeds and Fertilizers -->
        <!-- <a href="BuySeedsAndFertilizersServlet" class="option-box"> -->
        <a href="addtocart_seeds.html" class="option-box">
            <h2>Buy Seeds and Fertilizers</h2>
        </a>

        <!-- Option 2: Upload Farm Products -->
        <!--<a href="UploadFarmProductsServlet" class="option-box">-->
          <a href="farmerDashboard.jsp" class="option-box">
            <h2>Upload Farm Products</h2>
        </a>
    </div>

</body>
</html>
