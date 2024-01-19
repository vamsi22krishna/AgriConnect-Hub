

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>About</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./Images/logo.jpeg" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="style.css">
        <title>About</title>
        <style>
            main {
                /*margin-top: 52px;*/
                font-family: "Poppins", sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 50px;
            }

            #about-section > h3 {
                color: #91ac41;
                font-family: "Caveat", cursive;
                padding-top: 10px;
                font-size: 40px;
            }

            #about-section > p {
                font-family: "Poppins", sans-serif;
                text-align: center;
                font-weight: 500;
                font-size: 16px;
                color: #8b8b99;
                letter-spacing: 0.5px;
                padding-bottom: 25px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-light" href="index.jsp"><img class="logo" src="https://t4.ftcdn.net/jpg/03/92/57/67/360_F_392576710_iFfnZ3Lt65TKBHaCl0tyqNDWWqgCnFEM.jpg" alt="../"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item fs-5"><a class="nav-link text-light active" aria-current="page"
                                                     href="./index.jsp" id="home">Home</a></li>
                        <li class="nav-item fs-5"><a class="nav-link text-light" href="./about.jsp">About</a></li>
                        <li class="nav-item dropdown fs-5">
                            <a class="nav-link dropdown-toggle text-light" id="navbarDropdown" href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form action="registration.jsp" class="d-flex">
                        <button class="btn btn-outline-light me-3 fs-5" type="submit">Sign Up</button>
                    </form>
                    <form action="login.jsp" class="d-flex">
                        <button class="btn btn-outline-light me-4 fs-5" type="submit">Login</button>
                    </form>
                </div>
            </div>
        </nav>
        <main>
            <section id="about-section" class="mt-3">
                <h3 class="center">About Us</h3>
                <p class="center">Welcome to E-Farmers hut,– Your Trusted Partner in Agriculture! we are committed to revolutionizing the way farmers
                 access essential resources and connect with consumers. Our mission is to create a sustainable and thriving ecosystem for agriculture by addressing the challenges faced by farmers
                  in sourcing quality seeds, fertilizers, and selling their produce at fair prices. </p>
                <h3 class="center">Our Team</h3>
                <div class="container-md center">
                    <div class="row mt-5">
                        <div class="card mx-3" style="width: 18rem;">
                            <img src="vamsi_photo.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title fw-bold">Vamsi c</h5>
                                <p class="card-text">
                                    <br>
                                    <br>
                                    vamsic22k@gmail.com
                                </p>
                                <a href="#" class="btn btn-dark center w-100">Contact</a>
                            </div>
                        </div>
                        <div class="card mx-3" style="width: 18rem;">
                            <img src="photo1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title fw-bold">Pooja V</h5>
                                <p class="card-text">
                                    <br>
                                    <br>
                                     pooja@gmail.com
                                </p>
                                <a href="#" class="btn btn-dark center w-100">Contact</a>
                            </div>
                        </div>
                        <div class="card mx-3" style="width: 18rem;">
                            <img src="photo2.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title fw-bold">gagan </h5>
                                <p class="card-text">
                                    <br>
                                    <br>
                                    gagan@gmail.com
                                </p>
                                <a href="#" class="btn btn-dark center w-100">Contact</a>
                            </div>
                        </div>
                        <div class="card mx-3" style="width: 18rem;">
                            <img src="photo3.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title fw-bold">Raghavesh</h5>
                                <p class="card-text">
                                    <br>
                                    <br>
                                   Raghavesh@gmail.com
                                </p>
                                <a href="#" class="btn btn-dark center w-100">Contact</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <footer class="py-5 bg-dark fs-5 foot">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
            </div>
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

</html>