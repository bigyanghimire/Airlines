<?php 
session_start();
require_once("includes/connect.php");
if (isset($_POST['submit'])){
    $emp_id=$_POST['emp_id'];
 
    $con=@mysqli_connect("localhost","root","","airline");//or die("sorry the connection couldnot be established");
        //$db=@mysqli_select_db("airline",$con)or die("sorry the database couldnot be selected");

        $sql = "DELETE FROM employees WHERE empid = '$emp_id' ";
        $result=mysqli_query($con,$sql);
        if($result)
        {
            echo "<script>alert('Employee has been added has been deleted')</script>";
        }

        else{
            $errormessage = "Error in Insertion! Check:".mysqli_error($con);
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
            .delete{
                    width:100%;
                    height:200px;
                    background-color:skyblue;
                    margin-top:10px;
                }
            .idclass{
                width:50%;
                height:50px;
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
                <h2>Employees</h2>
                <a href="employee.php" style="display:inline-block"><h3>Add Employee</h3></a>
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post" style="display:inline">
                    <input type="submit" name="submitsearch" style="float:right; margin:0px 10px;">
                    <input type="search" name="search" style="float:right" placeholder="Search...">
                </form>
				<table>
                    <tr>
                        <th>S.N</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Contact</th>
                        <th>Department</th>
                        <th>Working Hours</th>
                    </tr>
                    <?php
                        $errormessage = "";
                        $sql ="SELECT * FROM employees";
                        $i=1;
                        $result = mysqli_query($con,$sql);
                        if($result){
                            if (isset($_POST['submitsearch'])){
                                $searched_key = $_POST['search'];
                                $sql = "SELECT * FROM employees WHERE name LIKE '%$searched_key%' or age LIKE '%$searched_key%' or dept LIKE '%$searched_key%' or gender LIKE '%$searched_key%' order by empid DESC";
                                $result = mysqli_query($con,$sql);
                            if ($result){
                                $i = 1;
                            while($row=mysqli_fetch_array($result)){
                                echo "<tr>
                                    <td>". $i++ ."</td>
                                    <td>". $row['name'] ."</td>
                                    <td>". $row['age'] ."</td>
                                    <td>". $row['gender'] ."</td>
                                    <td>". $row['address'] ."</td>
                                    <td>". $row['contact_num'] ."</td>
                                    
                                    <td>". $row['dept'] ."</td>
                                    <td>". $row['workinghrs'] ."</td>
                                    </tr>
                                ";
                            }
                            }else{
                                $errormessage ="Error in displaying. CHECK:".mysqli_error($con);
                            }
                                
                            }else{
                            while($row=mysqli_fetch_array($result)){
                                echo "<tr>
                                <td>". $i++ ."</td>
                                <td>". $row['name'] ."</td>
                                <td>". $row['age'] ."</td>
                                <td>". $row['gender'] ."</td>
                                <td>". $row['address'] ."</td>
                                <td>". $row['contact_num'] ."</td>
                             
                                <td>". $row['dept'] ."</td>
                                <td>". $row['workinghrs'] ."</td>
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
        <div class="delete">
        <?php echo $errormessage ?>
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" method="post" style="display:inline">
<h2>Enter the ID to be deleted:</h2>    
<input type="text" name="emp_id" placeholder="Enter the ID..." class"idclass">
<button type="submit" name="submit">Delete</button>
</form>







</div>
	</body>
</html>