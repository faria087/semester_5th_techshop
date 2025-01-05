<!-- admin_dashboard.php -->
<?php
session_start();

require_once "db_connection.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Inside the header section of admin_dashboard.php -->
<header style="background-image: url('admin_header.jpg');">
    <!-- Header content -->
</header>


    <nav>
        <!-- Navigation menu -->
    </nav>

    <main>
        <h2>Welcome Admin!</h2>
        <!-- Inside the admin dashboard page (admin_dashboard.php) -->

    <h2>Add Product</h2>
    <form action="add_product.php" method="post" enctype="multipart/form-data">
        <input type="text" name="name" placeholder="Product Name" required>
        <input type="text" name="des" placeholder="Product Description" required>
        <input type="number" name="price" placeholder="Price" required>
        <input type="number" name="quantity" placeholder="quantity" required>
        <input type="file" name="image" accept="image/*" required>
        <button type="submit">Add Product</button>
    </form>



    <h2>Product List</h2>
    <div class="product-container">
        <?php
        // Fetch products from the database
        $sql = "SELECT * FROM products";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="product">
                    <h3><?php echo $row["name"]; ?></h3>
                    <p>Description: <?php echo $row["des"]; ?></p>
                    <p>Price: $<?php echo $row["price"]; ?></p>
                    <p>Stock: <?php echo $row["quantity"]; ?></p>
                    <img src="uploads/<?php echo $row["image"]; ?>" alt="Product Image">
                    <form action="delete_product.php" method="get">
                        <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">
                        <button type="submit">Delete</button>
                    </form>
                </div>
                <?php
            }
        } else {
            echo "No products available.";
        }
        ?>
    </div>



    <h2>Edit Product</h2>
    <?php
    // Fetch products from the database
    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            ?>
            <div class="product">
                <form action="edit_product.php" method="post">
                    <input type="hidden" name="id" value="<?php echo $row["id"]; ?>">
                    <input type="text" name="name" value="<?php echo $row["name"]; ?>" placeholder="Product Name" required>
                    <input type="text" name="des" value="<?php echo $row["des"]; ?>" placeholder="Product Description" required>
                    <input type="number" name="price" value="<?php echo $row["price"]; ?>" placeholder="Price" required>
                    <input type="number" name="quantity" value="<?php echo $row["quantity"]; ?>" placeholder="Stock" required>
                    <!-- Add image upload field if needed -->
                    <button type="submit">Save Changes</button>
                </form>
            </div>
            <?php
        }
    } else {
        echo "No products available.";
    }
    ?>







        <!-- Admin dashboard content -->
    </main>

    <footer>
        <!-- Footer content -->
    </footer>
</body>
</html>
