<?php
session_start();
	$pagename="Add a New Product"; //Create and populate a variable called $pagename
	echo "<link rel=stylesheet type=text/css href=myStyleSheet.css>"; //Call in stylesheet
	echo "<title>".$pagename."</title>"; //display name of the page as window title
	echo "<body>";
	include ("headfile.html"); //include header layout file
	include ("detectlogin.php"); //if the user has logged in it will show the login users details
	echo "<h4>".$pagename."</h4>"; //display name of the page on the web page
	
	echo"<form action= addproduct_conf.php method='POST'>";

	echo "
	<table style='border: 0px'>
	
	<tr><td style='border: 0px'>Product Name :</td> <td style='border: 0px'><input type=text name='proName'  autofocus></td></tr>
	<tr><td style='border: 0px'>Small Picture Name : </td><td style='border: 0px'><input type=text name='smallPicName' ></td></tr>
	<tr><td style='border: 0px'>Large Picture Name : </td><td style='border: 0px'><input type=text name='largePicName' ></td></tr>
	<tr><td style='border: 0px'>Short Description : </td><td style='border: 0px'><input type=text name='smallDescription' ></td></tr>
	<tr><td style='border: 0px'>Long Description : </td><td style='border: 0px'><input type=text name='longDescription' ></td></tr>
	<tr><td style='border: 0px'>Price : </td><td style='border: 0px'><input type=text name='price' ></td></tr>
	<tr><td style='border: 0px'>Initial Stock Quantity : </td><td style='border: 0px'><input type=text name='quantity' ></td></tr>
	
	
	<td style='border: 0px'><input type=submit value='Add Product'></td>
	<td style='border: 0px'><input type=reset value='Clear Form'></td>
	
	
	</table>";

	echo "</form>";
	
	
	include("footfile.html"); //include head layout
	echo "</body>";
?>