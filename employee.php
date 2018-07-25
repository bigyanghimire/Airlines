<?php 
session_start();
require_once("includes/connect.php");

    
    if (isset($_POST['submit'])){
        $emp_numberx=$_POST['emp_numberx'];
        $name = $_POST['name'];
        $age = $_POST['age'];
        $gender = $_POST['gender'];
        $address = $_POST['address'];
        $contact = $_POST['contact'];
        $dept = $_POST['dept'];
        $working_hr = $_POST['working_hr'];
        $con=@mysqli_connect("localhost","root","","airline");//or die("sorry the connection couldnot be established");
			//$db=@mysqli_select_db("airline",$con)or die("sorry the database couldnot be selected");

			$sql = "INSERT INTO employees(empid,name,age,gender,address,contact_num,dept,workinghrs) values ('$emp_numberx','$name','$age','$gender','$address','$contact','$dept','$working_hr')";
			$result=mysqli_query($con,$sql);
			if($result)
			{
				echo "<script>alert('Employee has been added has been added')</script>";
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
                #footer{
text-align:center;
height:100px;

font-size:20px;
                }
                .delete{
                    width:100%;
                    height:200px;
                    background-color:red;
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
                                <th>Employee ID:</th>
                                <td><input type="text" name="emp_numberx" placeholder="Aircraft Num..." ></td>
                            </tr>
                            <th>    
                            <label for="name">Name:</label></th><td><input type="text" name="name" id="name" placeholder="Name...."  autocomplete="off" required>
                            </td>    
                            </tr>    
                            <tr>
                            <th>    
                            <label for="Age">Age:</label></th>
                            <td>
                            <input type="text" name="age" id="age" placeholder="Age..." autocomplete="off" required>
                            </td>    
                            </tr>
                            <tr>
                            <th>
                            <label for="gender">Gender:</label>
                            </th>
                                <td>
                                <input type="text" name="gender" id="gender" placeholder="Gender...." autocomplete="off" required>
                                </td>
                            </tr>
                            <tr>
                                <th>
                            <label for="address">Address</label>
                                    </th>
                                <td><input type="text" name="address" id="address" required></td>
                            </tr>
                            <tr>
                            <tr>
                            <th>    
                            <label for="name">Contact Number:</label></th><td><input type="text" name="contact" id="contact" placeholder="Name...." autocomplete="off" required>
                            </td>    
                            </tr>
                            <tr>
                            <th>    
                            <label for="name">Department:</label></th><td><input type="text" name="dept" id="dept" placeholder="Department...." autocomplete="off" required>
                            </td>    
                            </tr>
                            <tr>
                            <th>    
                            <label for="name">Working Hours:</label></th><td><input type="text" name="working_hr" id="name" placeholder="Name...." maxlength="4" autocomplete="off" required>
                            </td>    
                            </tr>
                            <td></td>
                            <td><input type="submit" name="submit"><input type="reset"></td>    
                            </tr>
                            
                        </table>    
                    </form>
                </div>
                
				
			</div>

			

		</div>
        <div class="delete">

        </div>
        <footer id="footer">
       <!-- <?php echo $errormessage ?>-->
<a href="employee_info.php">Employees info</a>
</footer>
	</body>
</html>