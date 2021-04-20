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

$mysql_table = "vehicle";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $registration = $_POST["registration"];
    $sqltext = "SELECT * FROM $mysql_table WHERE registration = '$registration' "; 
    $result = $connection->query($sqltext);
    if (!$connection->query($sqltext)) {
        echo "$sqltext";
        die("Error: Failed to return data from table $mysql_table " . $connection->error . "<br>");
    }
    if ($result->num_rows > 0) {
        echo 'Vehicle registration already exists.';
    }
    else {
        $sqltext = "INSERT INTO $mysql_table (model, make, year, color, registration) VALUES "; 
        $inputvalues = "'" . $_POST["model"] . "','" . $_POST["make"] . "'," . $_POST["year"] . ",'" . $_POST["color"] . "','" . $_POST["registration"] . "'"; 
        $sqltext = "$sqltext ($inputvalues)"; 

        if (!$connection->query($sqltext)) { 
            echo "$sqltext<br>";
            die("Error: Failed to insert data into table '$mysql_table' " . $connection->error . "<br>"); //Modify
        }
        echo 'User created successfully. <a href="../login.php">Click here</a> to login.<br>';
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
                <form name="editvehicle" method="post" action="<?php echo basename(__FILE__);?>"> <!-- Changed "_FILE_" -->
                    <!-- <input type="text" name="Name" placeholder="Driver name"> -->
                    <select name="model" size="5">
                        <option value="bm">BMW</option>
                        <option value="op">Opel</option>
                        <option value="vw">VW</option>
                        <option value="tt">Toyota</option>
                        <option value="bz">Benz</option>
                    </select>
                    <br>
                    <select name="make" size="5">
                        <option value="bm_1">1</option>
                        <option value="bm_2">2</option>
                        <option value="bm_3">3</option>
                        <option value="bm_4">4</option>
                        <option value="bm_5">5</option>
                        <option value="bm_6">6</option>
                        <option value="op">Opel</option>
                        <option value="vw">VW</option>
                        <option value="tt">Toyota</option>
                        <option value="bz">Benz</option>
                    </select>
                    <br>
                    <input type="number" name="year" placeholder="Year Model">
                    <br>
                    <select name="color">
                        <option value="red">Red</option>
                        <option value="blue">Blue</option>
                        <option value="green">Green</option>
                    </select>
                    <br>
                    <input type="text" name="registration" placeholder="Registration">
                    <br>
                    <input name="Submitbtn" type="submit" id="C2" value="OK" onclick="return checkpassword(this.form)"> 
                    <script src="../scripts/scripts.js"></script>
                </form>
            </td>
        </tr>
    </table>
</body>