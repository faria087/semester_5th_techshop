<!-- cart.php -->
<?php
session_start();

// Check if cart session variable is set
if (!isset($_SESSION["cart"]) || empty($_SESSION["cart"])) {
    echo "Your cart is empty.";
    exit;
}

// Include database connection
require_once "db_connection.php";

// Fetch products in the cart from the database
$cart_products = [];
foreach ($_SESSION["cart"] as $id) {
    $sql = "SELECT * FROM products WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows == 1) {
        $cart_products[] = $result->fetch_assoc();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <!-- Header content -->
    </header>

    <nav>
        <!-- Navigation menu -->
    </nav>

    <main>
        <h2>Shopping Cart</h2>
        <div class="cart">
            <?php
            foreach ($cart_products as $product) {
                ?>
                <div class="cart-item">
                    <h3><?php echo $product["name"]; ?></h3>
                    <p>Price: $<?php echo $product["price"]; ?></p>
                    <!-- Add more product details as needed -->
                </div>
                <?php
            }
            ?>
        </div>
    </main>

    <footer>
        <!-- Footer content -->
    </footer>
</body>
</html>
