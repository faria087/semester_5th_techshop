<!-- edit_product.php -->
<?php
session_start();



// Include database connection
require_once "db_connection.php";

// Get form data
$product_id = $_POST["id"];
$name = $_POST["name"];
$description = $_POST["des"];
$price = $_POST["price"];
$costprice = $_POST["costprice"];
$stock = $_POST["quantity"];

// Update product data in the database
$sql = "UPDATE products SET name=?, description=?, price=?, costprice=?, quantity=? WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssdii", $name, $des, $price, $costprice, $quantity, $id);
$stmt->execute();




// Redirect back to admin dashboard
header("Location: admin_dashboard.php");
exit;
?>
