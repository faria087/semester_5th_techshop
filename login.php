<?php
session_start();
require_once "db_connection.php"; // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $text = $_POST["text"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Validate user credentials
    $query = "SELECT * FROM users WHERE email=? AND password=?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ss", $email, $password); // You should hash the password in the database and compare the hashed password
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        // User found, login successful
        $_SESSION["email"] = $email; // Store user's email in session for future use
        header("Location: dashboard.php"); // Redirect to dashboard or any other page after successful login
        exit();
    } else {
        // User not found or invalid credentials
        echo "Invalid email or password. Please try again.";
    }
}
?>