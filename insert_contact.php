<!DOCTYPE html>
<html>
<head>
	<?php include"includes/head.inc"; ?>
	<script>tinymce.init({selector:'textarea'});</script>
</head>
<body>
	<div class="wrapper">

		<!-- header section -->
		<div class="header">
			<div class="headerContent"><h1>CONTACT LIST</h1></div>
		</div>

		<!-- content section -->
		<div class="content">
		<div><h1>Create New Contact</h1></div>
			<hr>
			<div class="contact">
				<div class="contact_insert">
					<form action="insert_contact.php?id=<?php echo $row[contact_id] ?>" method="post" enctype="multipart/form-data">
						<table style="float:left" width="50%">
							<tr>
								<td>First Name:</td>
								<td><input type="text" name="fname" placeholder="First Name"  size="40%"></td>
							</tr>
							<tr>
								<td>Last Name:</td>
								<td><input type="text" name="lname" placeholder="Last Name" size="40%"></td>
							</tr>
							<tr>
								<td>Nickname:</td>
								<td><input type="text" name="nickname" placeholder="Nickname" size="40%"></td>
							</tr>
							<tr>
								<td>Profile Image:</td>
								<td><input type="file" name="profile"></td>
							</tr>
							
								<td>Cell Phone:</td>
								<td><input type="text" name="cphone" placeholder="Cell Phone" size="40%"></td>
							</tr>
							
							<tr>
								<td>Work Phone:</td>
								<td><input type="text" name="wphone" placeholder="Work Phone" size="40%"></td>
							</tr>

							<tr>
									<td>Email address:</td>
								<td><input type="text" name="email" placeholder="Email address" size="40%"></td>
							</tr>

							<tr>
								<td>Address:</td>
								<td><input type="text" name="address" placeholder="Address" size="40%"></td>
							</tr>
							<tr>
								<td>City:</td>
								<td><input type="text" name="city" placeholder="City" size="40%"></td>
							</tr>
							<tr>
								<td>State:</td>
								<td><input type="text" name="country" placeholder="Country" size="40%"></td>
							</tr>
							<tr>
								<td>Zipcode:</td>
								<td><input type="text" name="zipcode" placeholder="Zipcode" size="40%"></td>
							</tr>
						</table>
						<table style="float:right" width="45%">
							
						</table>
						<div class="clear"></div>
						<input class="insert_contact_button" type="submit" name="submit" value="Insert Contact">
						<a href="index.php"><input class="cancel_contact_button" type="button" value="Cancel"></a>
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>	
</body>
</html>	
<?php 
	if (isset($_POST['submit'])){
		require_once"connection.php";
		$fname = $_POST['fname'] ;
		$lname = $_POST['lname'] ;
		$nickname = $_POST['nickname'] ;
		$profile = $_FILES['profile']['name'] ;
		$profile_tmp = $_FILES['profile']['tmp_name'] ;
		$cphone = $_POST['email'] ;
		$cphone = $_POST['cphone'] ;
     	$wphone = $_POST['wphone'] ;
        $address = $_POST['address'] ;
        $city = $_POST['city'] ;
        $state = $_POST['state'] ;
        $zipcode = $_POST['zipcode'] ;
      	//$bio = $_POST['bio'] ;

        move_uploaded_file($profile_tmp, "img/$profile");



        $insert_contact ="insert into contacts (contact_fname,
        	contact_lname,
        	contact_nickname,
        	contact_cphone,
      		contact_wphone,
      		contact_email,
        	contact_address,
        	contact_city,
        	contact_state,
        	contact_zipcode,
        	contact_profile,
        	 )
        	
        	values(
        		'$fname',
        		'$lname',
        		'$nickname',
        		'$cphone',
        		'$wphone',
        		'$email',
        		'$address',
        		'$city',
        		'$state',
        		'$zipcode',
				'$profile',
        		)";

       $sql_insert_contact = $conn ->query($insert_contact);
       		if($sql_insert_contact== true)
       		{
       			header("Location: index.php");
       		}

}
	

?>

    