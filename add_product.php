<!-- add_product.php -->
<?php
session_start();



// Include database connection
require_once "db_connection.php";

// Get form data
$name = $_POST["name"];
$des = $_POST["des"];
$costprice = $_POST["costprice"];
$price = $_POST["price"];
$quantity = $_POST["quantity"];
$image = $_FILES["image"]["name"];

// Move uploaded image to server
$target_dir = "uploads/";
$target_file = $target_dir . basename($image);
move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);

// Insert product data into database
$sql = "INSERT INTO products (name, des, costprice, price, quantity, image) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssdis", $name, $description,$costprice, $price, $stock, $image);
$stmt->execute();

// Redirect back to admin dashboard
header("Location: admin_dashboard.php");
exit;
?>
