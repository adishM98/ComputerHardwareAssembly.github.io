 <?php 

session_start();

if(!isset($_SESSION['email']) ||(!isset($_SESSION['pwd'])))

{ 

header('location:login.php'); 

	}
	 $email=$_SESSION['email'];

	$pwd=$_SESSION['pwd'];

	
if($_SESSION['keyboard']=="false")
{
	echo "<script>
			 alert('Hardware : Keyboard missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['cpu']=="false")
{
	echo "<script>
			 alert('Hardware : CPU missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['mouse']=="false")
{
	echo "<script>
			 alert('Hardware : Mouse missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['monitor']=="false")
{
	echo "<script>
			 alert('Hardware : Monitor missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['motherboard']=="false")
{
	echo "<script>
			 alert('Hardware : Motherboard missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['harddisk']=="false")
{
	echo "<script>
			 alert('Hardware : Harddisk missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['powersupply']=="false")
{
	echo "<script>
			 alert('Hardware : Power Supply missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['ram']=="false")
{
	echo "<script>
			 alert('Hardware : RAM missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
elseif($_SESSION['cabinet']=="false")
{
	echo "<script>
			 alert('Hardware : Cabinet missing, Computer Cannot be assembled. Buy it and then proceed');
			 window.location.href='index.php';
			 </script>";
}
	
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

 

  

  <!--sliderall close-->

<!--slider down data-->            

            <div style="height:auto; width:1050px;   margin:auto; border:1px solid #EBEBEB; background-color:#ffffff;  ">

            <div style="height:40px; width:1050px; height:auto; border:0px solid #000000; padding-top:5px; background-color:#F1F0F0; border-radius:5px; color:#1C7582;">

         <font style=" font-size:18px;"> &nbsp; Check Out</font>

            </div>
			<form method="post" action="execheckout.php">
            <table border="0" style="background-color:#F1F0F0; margin-top:50px ; width:500px; border:1px solid #999999; border-radius:5px; height:300px;" align="center">

<tr><td>



            <table border="0" style="background-color:#F1F0F0; margin-top:10px ; width:400px; border:0px solid #999999; border-radius:5px; height:300px;" align="center">

            <tr><td style="color:#828282; font-size:18px;" colspan="2" align="center">DETAILS</td></tr>

            <tr><td colspan="2"><i>Please Comfirm!!!!!</i></td></tr>

            <tr><td colspan="2"><b>E mail :</b><?php echo $email ;?></td></tr>

            <tr><td colspan="2"><b>Amount :</b>Rs.<?php echo $_SESSION['amt'];?>/-</td></tr>
			<tr><td colspan="2"><b>Enter Address :</b><input type="text" name="address" placeholder="address"></td></tr>
            <tr><td>

            <input type="submit" value="Pay" style="border:0px solid #000000; border-radius:5px; background-color:#269FB2; height:25px; color:#FFFFFF;"></td><td></td></tr>

            </table>

			</td></tr></table>

           </form>
		   <br>
		   <div style="width:100%; background-color:#414040; height:150px; border:1px solid #000000; ">
		   <?php include('footer.php'); ?>

         </div><!--footer close-->

     </div> <!--center close-->

           </div><!--main close-->





</body>

</html>