<?php
include './database/db.php';

ini_set('display_errors', 1);
error_reporting(E_ALL);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <main>
        <div>
            <h1>What Country do you want to search?</h1>
            <form action="" method="POST">
                <input type="text" name="country_name" placeholder="Input name of the country that you want to find out">
                <input type="submit" name="submit" value="Submit">
            </form>
            <?php
            if (isset($_POST['submit'])) {
                $country_name = $_POST['country_name'];

                if (
                    stripos($country_name, 'drop') === false &&
                    stripos($country_name, 'create') === false &&
                    stripos($country_name, 'insert') === false &&
                    stripos($country_name, 'delete') === false
                ) {
                    $sql = "
                        SELECT c.name, c.capital, c.population, c.area_km2, l.name AS language, cu.name AS currency, cu.code AS currency_code
                        FROM Countries AS c
                        JOIN Languages AS l ON c.language_id = l.language_id
                        JOIN Currencies AS cu ON c.currency_id = cu.currency_id
                        WHERE c.name LIKE '%$country_name%'";


                    $result = $conn->query($sql);

                    if ($result) {
                        if ($result->num_rows > 0) {
                            echo '<div class="results">';
                            while ($row = $result->fetch_assoc()) {
                                echo '<div class="country-box">';
                                echo '<h2>' . htmlspecialchars($row['name']) . '</h2>';
                                echo '<p><strong>Capital:</strong> ' . htmlspecialchars($row['capital']) . '</p>';
                                echo '<p><strong>Population:</strong> ' . number_format($row['population']) . '</p>';
                                echo '<p><strong>Area:</strong> ' . number_format($row['area_km2'], 2) . ' km²</p>';
                                echo '<p><strong>Language:</strong> ' . htmlspecialchars($row['language']) . '</p>';
                                echo '<p><strong>Currency:</strong> ' . htmlspecialchars($row['currency']) . ' (' . htmlspecialchars($row['currency_code']) . ')</p>';
                                echo '</div>';
                            }
                            echo '</div>';
                        } else {
                            echo '<p>Country not found</p>';
                        }
                    } else {
                        echo '<p><strong>SQL Error:</strong> ' . htmlspecialchars($conn->error) . '</p>';
                    }
                } else {
                    echo '<p>Jangan nakal ya dek ya, jaangaaaannnnn...</p>';
                }
            }
            ?>
        </div>
    </main>
</body>

</html>