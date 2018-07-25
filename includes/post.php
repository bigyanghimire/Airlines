<?php
		
	$con=@mysqli_connect("127.0.0.1","root","","airline");//or die("sorry the connection couldnot be established");
	//$db=@mysqli_select_db("airline",$con);	//or die("sorry the database couldnot be selected");
	$query="SELECT * FROM `plane`";
	$result=mysqli_query($con,$query);
	while($row=mysqli_fetch_array($result))
	{
		$id1=$row[0];
		$title1=$row[1];
		$date1=$row[2];
		$author1=$row[3];
		$image1=$row[4];
		$content1=$row[5];
		if (!$result) {
			printf("Error: %s\n", mysqli_error($con));
			exit();
		}
		
?>	
	<h2 style="color:#39f"><?php echo $title1;?></h2><br>
	<i>published on:</i><?php echo $date1;?><br>
	<i>posted by:</i><?php echo $author1;?><br><br>
	<img src="images/<?php echo $image1;?>" width="300px" height="300px"><br><br>
	<?php echo $content1;?>
	<hr>



<?php } ?>