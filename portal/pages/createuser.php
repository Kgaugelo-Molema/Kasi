<?php
include "../dbConfig.php";

//This code is in the dbConfig.php but it doesn't execute on the server "https://gaea.thishost.co.za:2083"
/*const DB_HOST = "localhost"; // set database host
const DB_USER = "lsdccoza_admin"; // set database user
const DB_PASS = "lsdcadmin123"; // set database password
const DB_NAME = "lsdccoza_lsdcdb"; // set database name
$connection = new mysqli(DB_HOST,DB_USER,DB_PASS);*/ 
//if ($connection->connect_error) {die ("DB connection failed<br>".$connection->error);}
//if (!$connection->select_db(DB_NAME)) {die ("lsdcdb selection failed<br>".$connection->error);}
/////////////////////////////////////////////////////////////////////////////////////////////////////

$mysql_table = "members";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST["Name"];
    $sqltext = "SELECT * FROM $mysql_table WHERE name = '$name' "; 
    $result = $connection->query($sqltext);
    if (!$connection->query($sqltext)) {
        echo "$sqltext";
        die("Error: Failed to return data from table $mysql_table " . $connection->error . "<br>");
    }
    if ($result->num_rows > 0) {
        echo 'User name already exists.';
    }
    else {
        $sqltext = "INSERT INTO $mysql_table (name, email, password, privileges) VALUES "; 
        $inputvalues = "'" . $_POST["Name"] . "','" . $_POST["Email"] . "','" . md5($_POST["Password"]) . "', 2"; 
        $sqltext = "$sqltext ($inputvalues)"; 

        if (!$connection->query($sqltext)) { 
            echo "$sqltext<br>";
            die("Error: Failed to insert data into table '$mysql_table' " . $connection->error . "<br>"); //Modify
        }
        // echo 'User created successfully. <a href="../login.php">Click here</a> to login.<br>';
        header('Location: editvehicle.php');
    }
}
?>
<head>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../styles/styles.css">
    <link rel="icon" type="image/png" href="../images/favicon.png">
</head>
<body>
    <a href="../../">Back</a>
    <table>
        <tr>
            <td>
                <form name="createuser" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
                    <input type="text" name="Name" placeholder="Driver name">
                    <br>
                    <input type="tel" name="Cell" placeholder="Contact number">
                    <br>
                    <input type="email" name="Email" placeholder="Email address">
                    <br>
                    <input type="password" name="Password" placeholder="Enter password">
                    <br>
                    <input type="password" name="Confirm" placeholder="Confirm password">
                    <br>
                    <input name="Submitbtn" type="submit" id="C2" value="OK" onclick="return checkpassword(this.form)"> 
                    <script src="../scripts/scripts.js"></script>
                </form>
            </td>
        </tr>
    </table>
</body>