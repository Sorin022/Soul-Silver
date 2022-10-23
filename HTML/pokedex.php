<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        
        <title>Document</title>

        <link rel="stylesheet" href="assets/SS.css">

        <link rel="shortcut icon" href="assets/img/Poké_Ball_icon.svg.png" type="image/png">

        <style>
            small {font-size: 5}
        </style>

    </head>
    <body>
        <div id = "header">
            <div class="topnav">
                <a class= "active" href="pokemon.html"> Home</a>
                <a href="pokedex.php"> Pokedex</a>
                <a href="BattleSim.php"> Battle Simulator</a>
                <a href="Feedback.html"> Feedback</a>
                <a href="Disclaimer.html"> Disclaimer </a>
                <a href="mailto: Collin.Drake1@marist.edu"> Contact Us</a>
            </div>
        </div>

        
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "password";
            $dbname = "pokedex_db";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT dex_num, poke_name, poke_move_name, poke_type1, poke_type2, poke_move_name, poke_move_type, poke_move_dmg FROM dex_kanto ORDER BY dex_num";
            $result = $conn->query($sql);
            
            

                // output data of each row
                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                    echo "<small><b> Dex Number: " . $row["dex_num"]. " | Pokemon Name: " . $row["poke_name"]. " | Pokemon Move Name: " . $row["poke_move_name"]. " | Pokemon Move Damage: " . $row["poke_move_dmg"]. "</small>" . "<br>";
                    echo "<hr>";
                    }
                } else {
                    echo "0 results";
                }
                $conn->close();

        ?> 

    </body>
    
</html>