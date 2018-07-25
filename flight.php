<?php 
session_start();
require_once("includes/connect.php");

if(isset($_SESSION['username'])){
    
}

?>

<!doctype html>
<html>
	<head>
		<title>Air line management system</title>
		<link rel="stylesheet" href="css/style.css">
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
				<div id="content">
					<h2>Main section</h2>
                    <a href="flightdetails.php">Flight Details</a><br>
                    <a href="route.php">Route</a><br>
                    <a href="flight_schedule.php">Add Flight Schedule</a>
					<br>
					<a href="flight_schedule_details.php">Flight Schedule Details</a>
				</div>

				
			</div>

			<div id="footer">
			Copyright &copy; 2018 Bigyan and Bhanu

			</div>

		</div>

	</body>
</html>