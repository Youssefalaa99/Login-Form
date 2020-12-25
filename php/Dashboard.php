<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/util.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
        integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<body>
    <div class="container user_card">
        <?php
            include_once 'connection.php';
            session_start();
            echo "<h1>Welcome ".$_SESSION["name"]."!</h1><br>";
            $dept_sql = "SELECT * FROM department;";
            $result = $conn->query($dept_sql);
            echo '<table class="table">
                    <thead class="thead-dark"> 
                        <tr>
                            <th scope="col">Department</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>';
            while($row = $result->fetch_assoc()) {
                echo '<tr>';
                echo '<th scope="row">' . $row['name'] . "</th>";
                echo '<td>' . $row['description'] . "</td>";
                echo '</tr>';
            }
            echo '</tbody>
                </table>';
            $conn->close();
        ?>
        <div>
            <a href="../html/Login.html" class="btn btn-danger mt-4">Logout</a>
        </div>
    </div>  
</body>
</html>



