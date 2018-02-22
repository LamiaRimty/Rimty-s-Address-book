<?php
   //credentials
   $host ="localhost";
   $user = "root";
   $pass ="";
   $db = "tutorial_phonebook";

   //create a connection to the database

$conn = new mysqli($host, $user, $pass, $db);
     
     //check if we are connected to the database
	if ($conn-> error) {
		die("could not connected to the database");
	}


   ?>
