 <?php 

session_start();

if(!isset($_SESSION['email']) ||(!isset($_SESSION['pwd'])))

{ 

header('location:login.php'); 

	}

	 $email=$_SESSION['email'];

	$pwd=$_SESSION['pwd'];

 ?>



<!DOCTYPE html>

<html>

<head>

<title>COMPUTER HARDWARE ASSEMBLY</title>

<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />

 <script src="themes/1/js-image-slider.js" type="text/javascript"></script>

 <link href="generic.css" rel="stylesheet" type="text/css" />



</head>

<body>



<div style="width:100%; height:auto;">



   <!--header --><div style="height:120px; width:100%; background-color:#8B8A90;border:0px solid #000000;">

  <?php include ('header.php'); ?>

   </div>



  <!--menu--> <div style="height:45px; width:100%; background-color:#269FB2; border:0px solid #269FB2;">

    <?php include ('menu.php'); ?>

   </div><!--menu close-->

  

  <!--cc--><div style="height:auto; width:100%;border:0px solid #269FB2;">

  

    <!--sliderall--> <div style="height:328px; margin:auto; width:1050px; border:0px solid #990000;  ">

       <?php include ('slider.php');?>

       

                  </div><!--sliderall close-->
				   
				   
<?php
 include('dbconnection.php');
$amount=$_SESSION['amt'];
$address=$_POST['address'];
 $item = '';
$query="select * from user_details where email='".$email."'";
$result=mysql_query($query);
while($row=mysql_fetch_array($result))
{
	$name=$row['name'];
	$contact=$row['contact'];
}
$query="select * from shopping_cart where email='".$email."'";
			 $result=mysql_query($query);		
			while($row=mysql_fetch_array($result))
			{
            if($row['quantity'] != 0){
                $product = '('.$row['quantity'].') '.$row['product_name'];
                $item = $product.', '.$item;
			}
		
			}
$query="INSERT INTO `order`(`id`, `name`, `contact`, `address`, `email`, `item`, `amount`) VALUES('','$name','$contact','$address','$email','$item','$amount')";
		 $result=mysql_query($query);
		 
		 $query="DELETE FROM `shopping_cart` WHERE email='".$email."'";
			 $result=mysql_query($query);
			 
			 echo "<script>
			 alert('Your order has been placed successfully.');
			 window.location.href='index.php';
			 </script>";

		 ?>