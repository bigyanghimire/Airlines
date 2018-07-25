<?php 
session_start();
require_once("includes/connect.php");

if(!isset($_SESSION['username'])){
    
}

?>

<!doctype html>
<html>
	<head>
		<title>Air line management system</title>
		<link rel="stylesheet" href="css/style.css">
        
        <style>
            table{
                width:100%;
            }
            th,td {
                height: 50px;
                text-align: center;
                
            }
            tr{
               width:100%; 
            }
            th{
                background-color: #39F;
            }
            
            tr:nth-child(even){
                background-color:#f1f1f3;
            }
            
            a{
                margin:10px;
            }
            
        </style>
	</head>

	<body>
		<div id="wrapper">
			<!-- Header -->
			<div id="header">
				<?php include("includes/header.php"); ?>
			</div>

			<!-- nav-->
			<div id="nav">
				<?php include("includes/nav.php"); ?>
			</div>

			
			<!--main_section-->

			<div id="main_section">
                <h2>Available Flights</h2>
                
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post" style="display:inline">
                    <input type="submit" name="submit" style="float:right; margin:0px 10px;">
                    <input type="search" name="search" style="float:right" placeholder="Search...">
                </form>
				<table>
                    <tr>
                        <th>S.N</th>
                        <th>Flight Day</th>
                        <th>Departure</th>
                        <th>Arrival</th>
                        <th>Plane Number</th>
                        <th>Route</th>
                    </tr>
                    <?php
                        $errormessage = "";
                        $sql ="SELECT * FROM flight_schedule";
                        $i=1;
                        $result = mysqli_query($con,$sql);
                        if($result){
                            if (isset($_POST['submit'])){
                                $searched_key = $_POST['search'];
                                $sql = "SELECT * FROM flight_schedule WHERE flight_day LIKE '%$searched_key%' or departure LIKE '%$searched_key%' or arrival LIKE '%$searched_key%' or aircraft_no LIKE '%$searched_key%' order by flid DESC";
                                $result = mysqli_query($con,$sql);
                            if ($result){
                                $i = 1;
                            while($row=mysqli_fetch_array($result)){
                                echo "<tr>
                                    <td>". $i++ ."</td>
                                    <td>". $row['flight_day'] ."</td>
                                    <td>". $row['departure'] ."</td>
                                    <td>". $row['arrival'] ."</td>
                                    <td>". $row['aircraft_no'] ."</td>
                                    <td>". $row['routecode'] ."</td>
                                    </tr>
                                ";
                            }
                            }else{
                                $errormessage ="Error in displaying. CHECK:".mysqli_error($con);
                            }
                                
                            }else{
                            while($row=mysqli_fetch_array($result)){
                                echo "
                                <tr>
                                <td>". $i++ ."</td>
                                <td>". $row['flight_day'] ."</td>
                                <td>". $row['departure'] ."</td>
                                <td>". $row['arrival'] ."</td>
                                <td>". $row['aircraft_no'] ."</td>
                                <td>". $row['routecode'] ."</td>
                                </tr>
                                ";
                            }
                        }
                        }else{
                            $errormessage = "Error in displaying data CHECK".mysqli_error($con);
                        }
                    ?>
                <?php    
                 ?>
                </table>

				
			</div>

			

		</div>

	</body>
</html>