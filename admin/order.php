<?php

session_start();



?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Computer Assembly</title>



<link rel="stylesheet" href="style.css" type="text/css" />





</head>

<body>

<?php include('header.php');?>

  <!--middle-->

      <div style="width:1050px; height:auto; margin:auto;border:#000099 1px solid;">



<!--left-->

<div ><?php include('left.php'); ?></div>

<!--right-->

<div style="width:800px; height:auto; float:left; margin:auto; border:1px solid #999999; border-radius:5px; margin-top:5px; margin-left:10px; ">



 <div style=" width:800px; float:left; height:auto;  border:solid 0px #999900; " >



<link rel="stylesheet" href="css_middle/style.css" type="text/css" />

<style type="text/css">

._css3m{display:none}

</style>

</div>



<div style=" width:700px; float:left; height:auto;  border:solid 0px #999900;" align="center">

<form name="form2" action="del.php" method="post" style="margin:auto;" >

              <table width="700" style="margin-top:20px;" border="0">





               <tr  style="background-color:#006699; color:#FFFFFF;" align="center">

                <td  width="50">Id </td>

                <td width="125">Customer Name</td>

                <td width="125">Contact number</td>

                <td width="200">Address</td>

                 <td width="100">Email</td>
				 <td width="300">Items</td>
				 <td width="100">Amount</td>
				 <td width="100">Action</td>
                </tr>







            <tr>





            <?php

			 include('dbconnection.php');

			 

//			 echo"$cate";

			 $query="SELECT * FROM phpgurukulshopping.order";
			 $result=mysql_query($query) or die(mysql_error());
			 while($row=mysql_fetch_array($result))
			 {

		?>



                    <td width="50" align="center"><?php echo $row['id'];?></td>

             <td width="75" align="center"><?php echo $row['name'];?></td>
			 <td width="125" align="center"><?php echo $row['contact'];?></td>
			<td width="125" align="center"><?php echo $row['address'];?></td>
			<td width="125" align="center"><?php echo $row['email'];?></td>
			<td width="500" align="center"><?php echo $row['item'];?></td>
			<td width="300" align="right"><?php echo $row['amount'];?></td>
                 

           <td  align="right"> 

          <a href='sendmail.php?x=<?php echo $row['email'];?>' style="text-decoration:none;"> <input type="button" name="view" value="notify" style="width:100px; height:25px; color:#FFFFFF; border:#FFFFFF 1px solid; background-color:#006699; border-radius:5px;"></a>

           

           </td>

            </tr>

            <?php


		}



		?>

     </table>

</form>





</div>







    </div>

</div>





</div>

</div>

</body>

</html>

