  <?php 

session_start();

if(!isset($_SESSION['email']) ||(!isset($_SESSION['pwd'])))

{ 

header('location:login.php'); 

	}

	 $email=$_SESSION['email'];

	$pwd=$_SESSION['pwd'];

 ?>
 
 
 
 
 <?php

			include ('dbconnection.php');

	if($_POST['submit2'])

	{

		$email=$_SESSION['email'];

		$Name=$_POST['name'];

		$Contact=$_POST['contact'];

		$query="UPDATE user_details set name='$Name',email='$email',contact='$Contact' where email='$email'";

		$res=mysql_query($query);

		if($res)

		{

			echo "<script>alert('success');window.location.href='edit_profile.php';</script>";

		}

else

{

echo "<script>alert('you entered wrong details');
		window.location.href='edit_profile.php';
</script>";

}

        }

		?>             
