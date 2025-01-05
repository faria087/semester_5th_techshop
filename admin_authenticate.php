<?php
session_start();
require_once "db_connection.php"; // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Validate admin credentials
    $query = "SELECT * FROM admins WHERE username=? AND email=? AND password=?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $username, $email, $password); // You should hash the password in the database and compare the hashed password
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        // Admin found, login successful
        $_SESSION["username"] = $username; // Store admin's username in session for future use
        header("Location: admin_dashboard.php"); // Redirect to admin dashboard or any other page after successful login
        exit();
    } else {
        // Admin not found or invalid credentials
        echo "Invalid username, email, or password. Please try again.";
    }
}
?>
