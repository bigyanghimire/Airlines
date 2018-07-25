<?php 
session_start();
require_once("includes/connect.php");
$errormessage = $acnumber = $capacity = $mfdby = $date = "";

    
    $errormessage = $acnumber = $capacity = $mfdby = $date = "";
    
    if (isset($_POST['submit'])){
        $acnumber = $_POST['acnumber'];
        $capacity = $_POST['capacity'];
        $mfdby = $_POST['mfdby'];
        $date = $_POST['date'];
        $con=@mysqli_connect("localhost","root","","airline");//or die("sorry the connection couldnot be established");
			//$db=@mysqli_select_db("airline",$con)or die("sorry the database couldnot be selected");

			$query="insert into aircrafts(aircraft_no,mfdon,capacity,mfdby)values('$acnumber','$date','$capacity','$mfdby')";
			$result=mysqli_query($con,$query);
			if($result==1)
			{
				echo "<script>alert('Aircraft has been added')</script>";
			}

			
	}
       
    
    


?>

<!doctype html>
<html>
	<head>
		<title>Air line management system</title>
		<link rel="stylesheet" href="css/style.css">
        <style>
            table{
                width: 100%;
            }
            input[type="text"],input[type="date"]{
                width:75%;
                display: inline-block;
                margin: 8px 0px;
                padding: 12px 2px;
            }
            table tr td input[type="reset"]
                {
                    outline:none;
                    border:none;
                    padding:4px;
                    box-shadow:2px 2px 2px 2px #666;
                    border-radius:3px;
                    margin:5px;
                    position:relative;
                    transition:0.3s;
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
				<div id="form">
                    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?> " >
                        <table>
                            <tr>
                            <th>    
                            <label for="acnumber">Aircraft Number:</label></th><td><input type="text" name="acnumber" id="acnumber" placeholder="Aircraft Number...." maxlength="4" autocomplete="off" required>
                            </td>    
                            </tr>    
                            <tr>
                            <th>    
                            <label for="capacity">Capacity:</label></th>
                            <td>
                            <input type="text" name="capacity" id="capacity" placeholder="Aircraft Capacity..." autocomplete="off" required>
                            </td>    
                            </tr>
                            <tr>
                            <th>
                            <label for="mfdby">Manufactured By:</label>
                            </th>
                                <td>
                                <input type="text" name="mfdby" id="mfdby" placeholder="Manufacturer...." autocomplete="off" required>
                                </td>
                            </tr>
                            <tr>
                                <th>
                            <label for="date">Date</label>
                                    </th>
                                <td><input type="date" name="date" id="date" required></td>
                            </tr>
                            <tr>
                            <td></td>
                            <td><input type="submit" name="submit"><input type="reset"></td>    
                            </tr>
                        </table>    
                    </form>
                </div>
                
				
			</div>

			<div id="footer">
                Message &nbsp;&nbsp;
				<?php echo $errormessage; ?>

			</div>

		</div>

	</body>
</html>