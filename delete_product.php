<!-- delete_product.php -->
<?php
session_start();



// Include database connection
require_once "db_connection.php";

// Check if product ID is provided
if (isset($_GET["id"])) {
    $product_id = $_GET["id"];

    // Delete product from database
    $sql = "DELETE FROM products WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();

    // Redirect back to admin dashboard
    header("Location: admin_dashboard.php");
    exit;
} else {
    // Redirect to home page if product ID is not provided
    header("Location: admin_dashboard.php");
    exit;
}
?>
