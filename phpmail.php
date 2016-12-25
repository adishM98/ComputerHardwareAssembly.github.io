<?php session_start(); ?>
<?php include('header_dashboard.php'); ?>


<?php



	 $code1=$_GET['x'];

	$query="select *  from phpgurukulshopping.order where email='".$code1."'";

	$rs=mysql_query($query) or die (mysql_error());

	while($row=mysql_fetch_array($rs))
		{
			
			$p = $row['amount'];
			$e = $row['email'];
			$n = $row['name'];
			$c = $row['contact'];
			$a = $row['address'];
			$i = $row['item'];
	
			require './PHPMailer-master/PHPMailerAutoload.php';
			$mail = new PHPMailer();
			$mail->IsSMTP();
			$mail->SMTPAuth = true;
			$mail->SMTPSecure = "tls";
			$mail->Host = "smtp.gmail.com";
			$mail->port = 587;
			$mail->Username = "computer.hardware.online@gmail.com";
			$mail->Password = "deepeshcha";
			//$mail->SMTPDebug = 2;

		
			$mail->From = "computer.hardware.online@gmail.com";
			$mail->FromName = "TEAM COMPUTER HARDWARE ASSEMBLY";
			$mail->Subject = "ORDER DETAILS";
			$mail->Body = " Name : <b>$n</b><br />
							Email : <b>$e</b><br />
							Address : <b>$a</b><br />
							Contact : <b>$c</b><br />
							Items : <b>$i</b><br />
							Total Amount : <b>$p</b><br />
							";
			$mail->MsgHTML = (" ");
			$mail->AddAddress($row['email']);
			$mail->IsHTML(true);
			
			if($mail->Send())
		{
			echo "<script>
alert('Order Details has been mailed.');
window.location.href='order.php';
</script>";  
		}
		else
		{
			echo "Error :" . $mail->ErrorInfo;
			return false;
		}
		}
		

?>

