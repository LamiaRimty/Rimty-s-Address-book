<?php
require_once"connection.php";
if(!isset($_SESSION['id']))
{
	header("Location: index.php");
}
 if(isset($_GET['id']))
 {
 	
 	$contacts = array( );

 	$id = $_GET['id'];
 
   $contact = "select * from contacts where contact_id= '$id'" ;

   $sql_contact = $conn-> query($contact);

while ($row = mysqli_fetch_assoc($sql_contact)) {
       $contacts[] = $row;
}

	foreach ($contacts as $person );
		
	
 }

?>

<!DOCTYPE html>
<html>
<head>
	<?php include"includes/head.inc"; ?>
</head>
<body>
	<div class="wrapper">

		<!-- header section -->
		<?php include"includes/header.inc"; ?>

		<!-- content section -->
		<div class="content">
			

		 		<div class="floatl"><h1><?php echo $person['contact_fname'] . " " . $person['contact_lname'] ?></h1></div>
				<a class="floatr" href="index.php"><input class="cancel_contact_button" type="button" value=" Home"></a>
				<div class="clear"></div>
				<hr>
				<div class="contact">
					<?php if($person['contact_profile'] == ""){

					 ?>

							<img src="img/default_profile_pic.jpg" alt="default image"  width="40%" style="float:left;">
					  <?php  } else{  ?>


					  <img src="img/<?php echo $person['contact_profile']  ?>" alt="<?php echo $person['contact_fname ']  ?>"  width="40%" style="float:left;">

					  <?php  }   ?>


					<div class="contact_info">
						<p><b>Nickname:</b><?php echo $person['contact_nickname'] ?> </p>
						<p><b>Cell Phone:</b> <?php echo $person['contact_cphone'] ?> </p>
				        <p><b>Work Phone:</b><?php echo $person['contact_wphone'] ?> </p>
				        <p><b>Email Address:</b> <?php echo $person['contact_email'] ?> </p>
						<p><b>Address:</b> <a href="http://maps.google.com/?q= <?php echo $person['contact_address'] ." " . $person['contact_city'] . " " .  $person['contact_state'] . " " . $person['contact_zipcode'] ?>"  target="_blank" > <?php echo $person['contact_address'] ." " . $person['contact_city'] . " " .  $person['contact_state'] . " " . $person['contact_zipcode'] ?> </a></p>
						
					</div>
					<div class="clear"></div>
				</div>
			</div> 
		</div>
	</div>	
</body>
</html>		