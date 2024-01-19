

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>DigiAgro</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./Images/logo.jpeg" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            .landing {
                height: 500px;
                background-image: url("https://images.pexels.com/photos/1389986/pexels-photo-1389986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
                background-position: center;
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }

            .main-title {
                position: absolute;
                top: 30%;
                left: 90px;
            }

            .main-para {
                position: absolute;
                top: 40%;
                left: 90px;
            }

            .product-img {
                height: 250px;
                width: 450;
            }
        </style>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-light" href="index.jsp"><img class="logo" src="https://t4.ftcdn.net/jpg/03/92/57/67/360_F_392576710_iFfnZ3Lt65TKBHaCl0tyqNDWWqgCnFEM.jpg" alt="../"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item fs-5"><a class="nav-link text-light active" aria-current="page"
                                                     href="NewFile.jsp" id="home">Home</a></li>
                        <li class="nav-item fs-5"><a class="nav-link text-light" href="./about.jsp">About</a></li>
                        <li class="nav-item dropdown fs-5">
                            <a class="nav-link dropdown-toggle text-light" id="navbarDropdown" href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Schemes</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="https://vikaspedia.in/agriculture/national-schemes-for-farmers/training-and-extension-for-farmers">State Schemes</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
               
               
                             </li>
                                <li><a class="dropdown-item" href="https://vikaspedia.in/agriculture/national-schemes-for-farmers/training-and-extension-for-farmers">Central Schemes</a></li>
                                
                            </ul>
                        </li>
                    </ul>
                    <form action="Registration.jsp" class="d-flex">
                        <button class="btn btn-outline-light me-3 fs-5" type="submit">Sign Up</button>
                    </form>
                    <form action="Login.jsp" class="d-flex">
                        <button class="btn btn-outline-light me-4 fs-5" type="submit">Login</button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5 landing" id="head">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-black">
                    <h1 class="display-4 fw-bolder main-title">Empowering Farmers</h1>
                    <p class="lead fw-normal text-white-50 mb-0 main-para">Nurturing Futures. Cultivating Success, One Seed at a Time
                       </p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5 d-none" id="product-detail">
                <!-- <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="./Images/1.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">SKU: BST-498</div>
                        <h1 class="display-5 fw-bolder">Shop item template</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">$45.00</span>
                            <span>$40.00</span>
                        </div>
                        <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium at dolorem
                            quidem modi. Nam sequi consequatur obcaecati excepturi alias magni, accusamus eius blanditiis
                            delectus ipsam minima ea iste laborum vero?</p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1"
                                style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div> -->
            </div>
            <!-- Section for Customer Buying -->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <h2 class="display-4 fw-bolder text-center mb-5">Buy from Us</h2>
        <div class="row gx-4 gx-lg-5">
            <div class="col-md-6">
                <img src="https://images.pexels.com/photos/7341749/pexels-photo-7341749.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="img-fluid" alt="Customer Buying">
            </div>
            <div class="col-md-6">
                <h3>Explore Our Products</h3>
                <p>Discover a wide range of quality products for your agricultural needs. From seeds to tools, we've got you covered. Browse through our catalog and make a purchase today!</p>
                <a href="Login.jsp" class="btn btn-primary">View Products</a>
            </div>
        </div>
    </div>
</section>

<!-- Section for Farmer Selling and Buying Fertilizers -->
<section class="py-5 bg-light">
    <div class="container px-4 px-lg-5 my-5">
        <h2 class="display-4 fw-bolder text-center mb-5">Sell and Buy Fertilizers</h2>
        <div class="row gx-4 gx-lg-5">
            <div class="col-md-6">
                <!-- Replace the next line with the actual image for selling -->
                <img src="https://images.pexels.com/photos/2255935/pexels-photo-2255935.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="img-fluid" alt="Farmer Selling">
                <h3>Sell Your Produce</h3>
                <p>Are you a farmer looking to sell your agricultural produce? We provide a platform for you to showcase and sell your products to a broader audience. Reach more customers and boost your sales.</p>
                <a href="Login.jsp" class="btn btn-primary">Sell Now</a>
            </div>
            <div class="col-md-6">
                <!-- Replace the next line with the actual image for buying fertilizers -->
                <img src="https://images.pexels.com/photos/15388810/pexels-photo-15388810/free-photo-of-man-putting-fertilizer-on-the-rice-field.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="img-fluid" alt="Buy Fertilizers">
                <h3>Buy Fertilizers</h3>
                <p>Enhance your crop yield with our high-quality fertilizers. Browse through our selection of fertilizers suitable for various crops. Invest in the health of your crops for a fruitful harvest.</p>
                <a href="Login.jsp" class="btn btn-primary">Explore Fertilizers</a>
            </div>
        </div>
    </div>
</section>

            
        <!-- Footer-->
        <footer class="py-5 bg-dark fs-5 foot">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    <script src="index.js"></script>
</html>