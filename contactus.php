<?php

session_start();

 include('dbconnection.php');

 

 if(isset($_POST['continue']))

{



 $name=$_POST['name'];

  $email=$_POST['email'];

   $contact=$_POST['contact'];

    $subject=$_POST['subject'];

	 $message=$_POST['message'];

	$query="insert into contactus values('','$name','$email','$contact','$subject','$message')";

		 $result=mysql_query($query);

		 if($result)

 		{

			 

			echo "<script>
			 alert('Thank you for reviewing.We will get back to you shortly');
			 window.location.href='contactus.php';
			 </script>";

 		}

 	}





 ?>



<!DOCTYPE html>

<html>

<head>

<title>COMPUTER HARDWARE ASSEMBLY</title>

<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />

 <script src="themes/1/js-image-slider.js" type="text/javascript"></script>

 <link href="generic.css" rel="stylesheet" type="text/css" />



  

  <script type="text/javascript">



function validate()

{

	if (document.form1.name.value=="")

	

	{

		alert("Name Is Required!");

		document.form1.name.focus();

		return false;

		}

		if(document.form1.email.value=="")

		{ alert("Email Is Required");

		document.form1.email.focus();

		return false;

		}

		if (/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(form1.email.value))  

		{  

		}  

   else

   {

	    alert("Invalid email address!")  

		document.form1.email.focus();

    	return (false);

 	}

	



		

		

		if(document.form1.contact.value=="")

		{ alert("Contact No Is Required");

		document.form1.contact.focus();

		return false;

		}

	

		if(  /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/.test(form1.contact.value))

		{

		}

		else

		{

		 alert("Invalid Contact number")  

		document.form1.contact.focus();

    	return (false);

		}

		
		
		
			if (document.form1.subject.value=="")

	

	{

		alert("Subject Is Required!");

		document.form1.subject.focus();

		return false;

		}

		

		
			if (document.form1.message.value=="")

	

	{

		alert("Enter Your Message!!!");

		document.form1.message.focus();

		return false;

		}
		
		
		

	}

	 </script>
	 
	 
	 <script>
	 function validateEmail(email) {
    //Validating the email field
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	//"
    if (! email.match(re)) {
        return (false);
    }
    return(true);
}
</script>

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

 

 

<!--slider down data-->            

            <div style="height:500px;; width:1050px;  margin-top:20px; margin:auto; border:0px solid #000000; background-color:#FFFFFF;  ">

            <div align="center" style="height:35px;  width:1050px; border:0px solid #000000; margin-top:10px; background-color:#F1F0F0; border-radius:5px; color:#1C7582;">

         <font style=" font-size:18px;" ><b>CONTACT US</b></font>

            </div>

            <!--registration form--><div style="border:1px solid #999999; border-radius:5px; height:400px; width:600px; float:left; margin-left:200px; margin-top:20px;">

            <form name="form1" method="post" onSubmit="return validate();">

            <table border="0" style="width:600px;" cellspacing="8">

            <tr style="background-color:#CDEFF3; color:#828282;; height:30px;"><td colspan="2"><b>Review</b></td></tr>

            <tr><td>Name*</td><td><input type="text" name="name" style="width:300px; height:25px;"></td></tr>

            <tr><td>E-Mail Id*</td><td><input type="text" name="email" style="width:300px; height:25px;"></td></tr>

            

            <tr><td>Contact Number*</td><td><input type="text" name="contact" style="width:300px; height:25px;"></td></tr>
			<tr><td>Subject*</td><td><input type="text" name="subject" style="width:300px; height:25px;"></td></tr>
			<tr><td>Message*</td><td><textarea rows="8" cols="50" name="message" "></textarea></td></tr>

            

           

            <tr><td colspan="2" align="center"><input type="submit" name="continue" value="Submit" style="border:1px solid #999999; border-radius:5px; height:35px; width:80px; font-size:16px; margin-right:25px;" align="middle"></td></tr>

            

            

            </table></form>

            

            </div><!--registration form-->

           

      </div><!--slider down close-->

            


         

       <!--footer--><div style="width:100%; background-color:#414040; height:150px; border:1px solid #000000; ">

         <?php include('footer.php'); ?>

         </div><!--footer close-->

     </div> <!--center close-->

           </div><!--main close-->





</body>

</html>