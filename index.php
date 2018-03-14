<?php 
    require_once"connection.php";
    unset($_SESSION['id'])
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
        <div class="headerContent"><h1>Address Book</h1></div>
    </div>
    <div class="content">
			<div><h1>Log in into your account</h1></div>
				<hr>
				<div class="contact">
					<div class="contact_insert">
    
                        <form method = "post" action="index.php" enctype="multipart/form-data">
                            <table style="float:left" width="50%">
                                <tr>
									<td>Name:</td>
									<td><input type="text" name="name" placeholder="Name"  size="40%" required></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type="password" name="password" placeholder="Password" size="40%" required></td>
								</tr>
                            </table>

                            <table style="float:right" width="45%">
                            </table>
                            <div class="clear"></div>

                            <input class="insert_contact_button" type="submit" name="submit" value="Sign In">
                            <p>Not yet a member? <a class="a_btn" href="register.php"><strong>Sign Up</strong></a></p>
                        </form>
                    </div>
                </div>
            </div>
    </div>

</body>
</html>

<?php 
	if (isset($_POST['submit'])) {
		$user_name = $_POST['name'];;
		$password = $_POST['password'];
        
        if (!empty($user_name) && !empty(password)) {

             $query = "SELECT * FROM users WHERE user_name='$user_name' AND password='$password'";
             $findRow = $conn->query($query);

            if (mysqli_num_rows($findRow) == 1) { 
                $_SESSION['id'] = $findRow->fetch_assoc()['user_id'];
				header('location: view.php');
			}
		}
		
	}
 ?>