<?php 
	require_once"connection.php";
 ?>
<!DOCTYPE html>
<html>
<head>
    <?php include"includes/head.inc"; ?>
</head>
<body>
<div class="wrapper">

    <!-- header section -->
    <div class="header">
        <div class="headerContent"><h1>Register</h1></div>
    </div>
    <div class="content">
			<div><h1>Register for new account</h1></div>
				<hr>
				<div class="contact">
					<div class="contact_insert">
    
                        <form method = "post" action="register.php" enctype="multipart/form-data">
                            <table style="float:left" width="50%">
                                <tr>
									<td>Name:</td>
									<td><input type="text" name="name" placeholder="Name"  size="40%" required></td>
                                </tr>
                                <tr>
									<td>Email:</td>
									<td><input type="email" name="email" placeholder="Email"  size="40%" required></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type="password" name="password" placeholder="Password" size="40%" required></td>
                                </tr>
                                <tr>
									<td>Confirm Password:</td>
									<td><input type="password" name="cpassword" placeholder="Confirm Password" size="40%" required></td>
								</tr>
                            </table>

                            <table style="float:right" width="45%">
                            </table>
                            <div class="clear"></div>

                            <input class="insert_contact_button" type="submit" name="submit" value="Sign Up">
                            <p>Log In? <a class="a_btn" href="login.php"><strong>Log In</strong></a></p>
                        </form>
                    </div>
                </div>
            </div>
    </div>

</body>
</html>

<?php 
	if (isset($_POST['submit'])) {
        $user_name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $cpassword = $_POST['cpassword'];
        
        if ($password == $cpassword) {
           
             $query = "INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`) VALUES (NULL,'$user_name', '$email', '$password')";
             $addRow = $conn->query($query);
            
			if ($addRow == true) { 
				header('location: login.php');
			}
		}
		
	}
 ?>