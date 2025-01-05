<!-- dashboard.php -->
<?php
session_start();

// Check if user is logged in
if (!isset($_SESSION["email"])) {
    header("Location: login.php");
    exit;
}

// Include database connection
require_once "db_connection.php";

// Fetch user information from the database
$email = $_SESSION["email"];
$sql = "SELECT * FROM users WHERE email=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
?>
<!---->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <h1>User Dashboard</h1>
</header>

<nav>
    <ul>
        <li><a href="dashboard.php">Home</a></li>
        <li><a href="orders.php">Orders</a></li>
        <li><a href="settings.php">Settings</a></li>
        <li><a href="logout.php">Logout</a></li>
    </ul>
</nav>

<main>
    <h2>Welcome back, <?php echo $username; ?>!</h2>
    <h2>Profile Information</h2>
    <p>Username: <?php echo $user["f_name"]; ?><?php echo $user["l_name"]; ?></p>
    <p>Usernumber: <?php echo $user["phone_number"]; ?></p>
    <p>Useraddress: <?php echo $user["Address"]; ?></p>
    <p>Email: <?php echo $user["email"]; ?></p>
    <!-- Add more profile information here -->
    <!-- Main content specific to the user goes here -->
</main>
</body>
</html>

<!---->

