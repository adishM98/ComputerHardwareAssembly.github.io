<?php session_start(); ?>



<script type="text/javascript">



function validate()

{

	if (document.form2.pcode.value=="")
		{
		alert("Product Code Is Required!");
		document.form1.name.focus();
		return false;
		}
		
		if (document.form2.pname.value=="")
		{
		alert("Product Name Is Required!");
		document.form1.name.focus();
		return false;
		}
		
		if (document.form2.pro_cat.value=="")
		{
		alert("Product Category is to be Selected!");
		document.form1.name.focus();
		return false;
		}
		
		if (document.form2.pprice.value=="")
		{
		alert("Price should be specified!");
		document.form1.name.focus();
		return false;
		}
		if (document.form2.desc.value=="")
		{
		alert("Name Is Required!");
		document.form1.name.focus();
		return false;
		}
		
		
		
	 }

	 </script>















<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>ShoppingMyChoice</title>



<link rel="stylesheet" href="style.css" type="text/css" />





</head>

<body>

<?php include('header.php');?>

  <!--middle-->

      <div style="width:1050px; height:auto; margin:auto;border:#000099 1px solid;">

	   

<!--left-->

<div ><?php include('left.php'); ?></div>

<!--right-->

<div style="width:810px; height:auto; float:left; margin:auto; border:1px solid #999999; border-radius:5px; margin-top:5px; margin-left:5px; ">



 <div style=" width:800px; float:left; height:60px;  border:solid 0px #999900; ">



<link rel="stylesheet" href="css_middle/style.css" type="text/css" />

<style type="text/css">

._css3m{display:none}

</style>

<ul id="css3menu11" class="topmenu" style="margin-top:18px; margin-left:8px;">

	<li><a href="insert.php" style="height:40px;line-height:40px; font-size:11px; width:105px; border-radius:10px 10px 1px 1px; border:#000000 0px solid;background-color:#000000; color:#FFFFFF;"><center><div style="padding-left:2px;"><b>Insert</b></div></center></a></li>



	<li class="toplast"><a href="update.php" style="height:40px;font-size:11px;line-height:40px;margin-left:2px; width:100px;border-radius:10px 10px 1px 1px;"><center><div style="padding-left:2px; "><b>Update</b></div></center></a></li>



    <li class="topmenu"><a href="delete.php" style="height:40px;line-height:40px;font-size:11px;margin-left:2px; width:100px;border-radius:10px 10px 1px 1px; "><center><div style="padding-left:2px;"><b>Delete</b></div></center></a></li>

 

</ul></div>

    

<div style=" width:800px; float:left; height:auto;  border:solid 0px #999900;" align="center">

<form name="form2" method="post" enctype="multipart/form-data" style="margin:auto;" onSubmit="return validate();" >

              <table width="780" style="margin-top:20px;" border="0">

             

              

               <tr >

                <td  style="width:10px; font-size:14px;">Product_Code:</td>

                <td width="349"><input type="text" name="pcode"/></td>

              

              <td>Product_Name:</td>

               <td width="349"><input type="text" name="pname"/></td>

             </tr>

             

             <tr><td>Product_category:</td><td width="349">

             <select name="pro_cat" style="width:155px;"/>
						<option value="-1">select one</option>
						<option  value="keyboard">KEYBOARD</option>
						<option value="cpu">CENTRAL PROCESSING UNIT</option>
						<option value="mouse">MOUSE</option>
						<option value="cooling">COOLING</option>
						<option value="gpu">GRAPHICS PROCESSING UNIT</option>
						<option value="music">HEADPHONES & SPEAKERS</option>
						<option value="monitor">MONITOR</option>
						<option value="ssd">SSD</option>
						<option value="harddisk">HARD DISK</option>
						<option value="motherboard">MOTHERBOARD</option>
						<option value="powersupply">POWERSUPPLY</option>
						<option value="ram">RAM</option>
						<option value="cabinet">CABINET</option>
						
						</select>

</td>

              <td>Product_Price:</td><td width="349"><input type="text" name="pprice"/></td></tr>

              

               <tr><td>Description:</td><td width="349"><input type="text" name="desc"/></td>

                   <td>Brand:</td><td width="349"><input type="text" name="brand"/></td></tr>

                   

             <tr><td>Category:</td><td width="349"><input type="text" name="category" />

             					

             

             

             </td>

               <td>Features:</td><td width="349"><input type="text" name="features"/></td></tr>

               

               <tr><td>Plateform:</td><td width="349"><input type="text" name="plateform"/></td>

                 <td>Model:</td><td width="349"><input type="text" name="model"/></td></tr>

                 

                 <tr><td>Type:</td><td width="349"><input type="text" name="type"/></td>

                 <td>Display:</td><td width="349"><input type="text" name="display"/></td></tr>

                 

                 <tr><td>Waranty:</td><td width="349"><input type="text" name="waranty"/></td>

                    <td>Shipping_time:</td><td width="349"><input type="text" name="shipping_time"/></td></tr>

                    

                   <tr><td>Price:</td><td width="349"><input type="text" name="price"/></td>

                    <td>Offer_price:</td><td width="349"><input type="text" name="offer_price"/></td></tr>

                    

                <tr><td>Save:</td><td width="349"><input type="text" name="save"/></td>

               <td>Image:</td><td width="349"><input type="file" name="Iname"/></td></tr>

                

               <tr style="margin-top:20px;"><td></td><td></td></tr>

               <tr>

               <td colspan="4" align="center"> <input type="submit" name="btninsert" value="Insert" style="width:100px; height:25px; color:#FFFFFF; border:#FFFFFF 1px solid; background-color:#006699; border-radius:5px;"></td></tr>



     </table>

</form>





</div>    

    

    

    

    </div>

</div>





</div>

</div>

</body>

</html>

<?php

include ('dbconnection.php');

if(isset($_POST["btninsert"]))

{ 

$pcode=$_POST['pcode'];

$pname=$_POST['pname'];

$pcat=$_POST['pro_cat'];

$price=$_POST['pprice'];

$desc=$_POST['desc'];

$brand=$_POST['brand'];

$category=$_POST['category'];

$features=$_POST['features'];

$plateform=$_POST['plateform'];

$model=$_POST['model'];

$type=$_POST['type'];

$display=$_POST['display'];

$waranty=$_POST['waranty'];

$shipping_time=$_POST['shipping_time'];

$price=$_POST['price'];

$offer_price=$_POST['offer_price'];

$save=$_POST['save'];

$image=$_FILES["Iname"]["name"];

  move_uploaded_file($_FILES["Iname"]["tmp_name"],"images/".$_FILES["Iname"]["name"]);
  
  
$query="insert into product values('','$pcode','$pname','$pcat','$price','$desc','$brand','$category','$features','$plateform','$model','$type','$display','$waranty','$shipping_time','$price','$offer_price','$save','$image')";





$result=mysql_query($query);

if($result)

{

	echo "<script>alert('record inserted');</script>".'<br>';

}

else

{

echo "<script>alert('record not insert');</script>".'<br>';

}

}



	

	

?>

