<!-- admin_register_process.php -->
<?php
require_once "db_connection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"]; // You should hash the password for security

    // Check if username or email already exists
    $check_query = "SELECT * FROM admins WHERE username=? OR email=?";
    $check_stmt = $conn->prepare($check_query);
    $check_stmt->bind_param("ss", $username, $email);
    $check_stmt->execute();
    $result = $check_stmt->get_result();

    if ($result->num_rows > 0) {
        echo "Username or email already exists. Please choose another one.";
    } else {
        // Insert new admin into the database
        $insert_query = "INSERT INTO admins (username, email, password) VALUES (?, ?, ?)";
        $insert_stmt = $conn->prepare($insert_query);
        $insert_stmt->bind_param("sss", $username, $email, $password); // You should hash the password
        $insert_stmt->execute();

        echo "Registration successful!";
    }
}
?>
