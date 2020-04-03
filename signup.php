<?php
session_start();
	$pagename="Sign Up"; //Create and populate a variable called $pagename
	echo "<link rel=stylesheet type=text/css href=myStyleSheet.css>"; //Call in stylesheet
	echo "<title>".$pagename."</title>"; //display name of the page as window title
	echo "<body>";
	include ("headfile.html"); //include header layout file
	echo "<h4>".$pagename."</h4>"; //display name of the page on the web page
	
	echo"<form action= signup_process.php method='POST'>";

	echo "
	<table style='border: 0px'>
	
	<tr><td style='border: 0px'>First Name :</td> <td style='border: 0px'><input type=text name='fname'  autofocus></td></tr>
	<tr><td style='border: 0px'>Last Name : </td><td style='border: 0px'><input type=text name='lname' ></td></tr>
	<tr><td style='border: 0px'>Address : </td><td style='border: 0px'><input type=text name='address' ></td></tr>
	<tr><td style='border: 0px'>Post Code : </td><td style='border: 0px'><input type=text name='pcode' ></td></tr>
	<tr><td style='border: 0px'>Tel No : </td><td style='border: 0px'><input type=text name='telno' ></td></tr>
	<tr><td style='border: 0px'>Email : </td><td style='border: 0px'><input type=text name='email' ></td></tr>
	<tr><td style='border: 0px'>Password : </td><td style='border: 0px'><input type=password name='password' ></td></tr>
	<tr><td style='border: 0px'>Confirm Password : </td><td style='border: 0px'><input type=password name='confirmPassword' ></td></tr>
	
	<td style='border: 0px'><input type=submit value='Sign Up'></td>
	<td style='border: 0px'><input type=reset value='Clear Form'></td>
	
	
	</table>";

	echo "</form>";
	
	
	include("footfile.html"); //include head layout
	echo "</body>";
?>