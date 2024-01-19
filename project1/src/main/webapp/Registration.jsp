<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
          <script src="https://kit.fontawesome.com/cfb5008573.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
              <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://kit.fontawesome.com/cfb5008573.js" crossorigin="anonymous">
    
    <link rel="icon" type="image/x-icon" href="./img/ewastelogo.jpg"/>
    <link rel="icon" type="image/x-icon" href="./Images/logo.jpeg"/>
     <link rel="stylesheet" href="style.css">
    <title>Sign-Up</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #7EA172 !important;
        }

        .navbar-brand {
            color: #fff !important;
        }

        .navbar-light .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-light .navbar-nav .nav-link {
            color: #fff !important;
        }

        .navbar-light .navbar-nav .nav-link:hover {
            color: #f8f9fa !important;
        }

        main {
            position: relative;
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }

        .signup-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 10 10 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 350px;
            height: 600px;
        }

        .fa-envelope,
.fa-envelope, .fa-key, .fa-phone, .fa-in-user {
    font-size: 1.8rem;
    color: rgb(77, 77, 77);
}
     .login-input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ced4da;
            box-sizing: border-box;
            border-radius: 5px;
        }

        .login-btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        #acc {
            display: block;
            margin-top: 10px;
            color: #007bff;
        }
        

        footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }

        .logo {
            max-width: 50px;
            max-height: 50px;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand text-light" href="#!"><img class="logo" src="https://t4.ftcdn.net/jpg/03/92/57/67/360_F_392576710_iFfnZ3Lt65TKBHaCl0tyqNDWWqgCnFEM.jpg" alt="../"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item fs-5"><a class="nav-link text-light active" aria-current="page"
                                             href="./index.jsp">Home</a></li>
                <li class="nav-item fs-5"><a class="nav-link text-light" href="./about.jsp">About</a></li>
                <li class="nav-item dropdown fs-5">
                    <a class="nav-link dropdown-toggle text-light" id="navbarDropdown" href="#" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">All Products</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<main>
    <form action="RegisterServlet" method="POST">
        <div class="signup-container center">
                    <div class="user">
                        <i class="fa fa-user"></i>
                    </div>

                    <div class="name center">
                        <i class="fa fa-user fa-in-user"></i>
                        <input class="login-input" type="text" name="name" id="" placeholder="Username" required>
                    </div>

                    <div class="mail center">
                        <i class="fa fa-envelope"></i>
                        <input class="login-input" type="email" name="email" id="" placeholder="Email" required>
                    </div>

                    <div class="phone center">
                        <i class="fa fa-phone"></i>
                        <input class="login-input" type="tel" name="phone" id="" placeholder="Phone number"  required>
                    </div>

                    <div class="pw center">
                        <i class="fa fa-key"></i>
                        <input class="login-input" type="password" name="password"  placeholder="Password" required>
                    </div>
                    
                    <div class="form-group">
                    <i class="bi bi-r-circle-fill"></i>
                <label for="userrole" class="form-label">Register As:</label>
                <select id="userrole" name="userrole" class="login-input1" required>
                    <option value="Farmer">Farmer</option>
                    <option value="Customer">Customer</option>
                </select>
            </div>
                    <input type="submit" class="login-btn center" value="SIGN-UP">
                    </form>
                    <a id="acc" href="./Login.jsp">Already have an account?</a>
                    </main>

<footer class="py-5 bg-dark fs-5 foot">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy;</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
