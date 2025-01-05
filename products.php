<!-- products.php -->
<?php
session_start();

// Include database connection
require_once "db_connection.php";

// Fetch products from the database
$sql = "SELECT * FROM products";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container-fluid">
    <header>
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg bg-body-tertiary my-menu">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="index.html">
                            <img src="img/logo.jpg" alt="" class="img-fluid" >
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="products.php">Shop</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Our Service
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Repairing</a></li>
                                        <li><a class="dropdown-item" href="#">others</a></li>
                                        <li><a class="dropdown-item" href="#">GD</a></li>
                                        <li><a class="dropdown-item" href="#">DM</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a href="login.html" class="nav-link">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a href="registration.html" class="nav-link">Signup</a>
                                </li>
                                <li class="nav-item">
                                    <a href="add_to_cart.php" class="nav-link">My cart</a>
                                </li>

                            </ul>

                        </div>
                    </div>
                </nav>

            </div>
        </div>
    </header>
<!--end header-->
    <main>
        <h2>Product List</h2>
        <div class="product-container">

            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    ?>
                    <div class="product">
                        <img src="img/4.jpg" alt="">

                        <h3><?php echo $row["name"]; ?></h3>
                        <p>Price: $<?php echo $row["price"]; ?></p>
                        <p>Description: <?php echo $row["des"]; ?></p>
                        <p>image<?php echo $row["image"]; ?></p>
                        <!-- Add add to cart button -->
                        <form action="add_to_cart.php" method="post">
                            <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">
                            <input type="submit" value="Add to Cart">
                        </form>
                    </div>
                    <?php
                }
            } else {
                echo "No products available.";
            }
            ?>
        </div>
    </main>


    <footer>
        <!-- Footer content -->
    </footer>

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
