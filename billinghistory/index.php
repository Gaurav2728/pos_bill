<?php
 error_reporting(E_ALL);
 ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once '../common/db.php';

$sql = "SELECT `bid`, `bill_detail`, `payment`, `amount`, `date` FROM `bill` ORDER BY `bid` DESC";
$db = getDB();
$stmt = $db->prepare($sql);
$stmt->execute();
$updates = $stmt->fetchAll(PDO::FETCH_OBJ);
$db = null;
// print_r($updates);

?><!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>


<style>
   a:link {    color: inherit;color: inherit; text-decoration: none;}

</style>
</head>
<body style="margin-top:0; margin-bottom:0; margin-left:0; margin-right:0; padding-top:10px; padding-bottom:30px; padding-left:0; padding-right:0; width:100%; background-color:#f5f5f5;">



  <table cellspacing="0" cellpadding="0" width="80%" align="center" style="background-color:#FFF; color:#666666; font-family: avenir, Arial, 'Times New Roman', Times, serif;">

	<!-- <table align="center" cellspacing="20" style="background-color: white;"> -->
    <tr>
      <td colspan="3" style="padding-top:10px; padding-bottom:10px; background-color:#f5f5f5;" align="left">
        <img src="../imgs/assets/quick_shop_header.png" height="80px;" width="180px;" />
        <h5>Walk Through in SuperMarket</h5>
      </td>
    </tr>
    <tr style="background-color:#402161; height:3px; font-size:0px;">
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" style="background-color:#e9eaed; color:#000000; padding-top:10px; padding-bottom:10px; padding-left:5%;" align="left">
      <font size="4">Welcome in Next Generation Shopping</font>
      <font size="4" style="float: right;">
        <a href="../barcode" style="margin: 0px 20px 0px 10px;">Test Barcode</a>
        <a href="" style="margin: 0px 20px 0px 10px;">Billing History</a>
        <a href="../#About" style="margin: 0px 20px 0px 10px;">About</a>
        <a hreF="../#contact" style="margin: 0px 20px 0px 10px;">Contact</a>
        <a href="../mockup" style="margin: 0px 20px 0px 10px;">Mockup</a>

      </font>
      </td>
    </tr>

</table>
<table align="center" width="80%" cellspacing="20" style="background-color: white;">


	<?php

	foreach($updates as $values){

	?>

		<tr style="background-color: white;">
				<td width="80%" style="text-align:left;">
          <h3><p><span>Bill Number: </span><?php echo 2823765+$values->bid;?></p><h3>
            <h3><p><span>Amount: ₹</span><?php echo $values->amount;?></p><h3>

            <?php if($values->payment == 'YES'){ ?>
                <h3><p>Payment Status: <span style="color:green;">Done</span></p><h3>
            <?php }else{ ?>
              <h3><p>Payment Status: <span style="color:red;">Not Done</p><h3>

              <?php } ?>

      	</td>

		</tr>


		</tr>
    <tr><td style="text-align:left; border-bottom:1pt solid black;background-color:#402161; height:3px; font-size:0px;"  valign="top" width="280"  colspan="3">

      </td>
  </tr>
		<?php
}
?>

	</table>

	<div>

	</div>


</body>
</html>
