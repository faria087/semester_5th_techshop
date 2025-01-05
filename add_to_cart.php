<!-- add_to_cart.php -->
<?php
session_start();

// Check if product ID is provided
if (isset($_POST["id"])) {
    // Get product ID from POST data
    $id = $_POST["id"];

    // Initialize cart session variable if not already set
    if (!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = [];
    }

    // Add product ID to cart array
    $_SESSION["cart"][] = $id;

    // Redirect back to the products page
    header("Location: products.php");
    exit;
} else {
    // Redirect to home page if product ID is not provided
    header("Location: index.html");
    exit;
}
?>
