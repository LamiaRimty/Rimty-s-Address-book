    <?php
    require_once"connection.php";
    if(!isset($_SESSION['id']))
    {
        header("Location: index.php");
    }

    if(isset($_GET['id']))
    {

    	
    	$id = $_GET['id'];
    	$delete_contact ="delete from contacts where contact_id = '$id' " ;

         $sql_delete_contact = $conn->query($delete_contact);


if($sql_delete_contact== true){
	header("Location: index.php");
	
}

    }


    ?>