<?php
 error_reporting(E_ALL);
 ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once '../common/db.php';

$sql = "SELECT `pid`,`scan_code`, `title`, `detail`, `image`, `available_stock`, `orignal_price`, `our_price` FROM `product_list` WHERE `active` = 'YES'
";
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
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

	 <script src="JsBarcode.js"></script>
	<script src="barcodes/EAN_UPC.js"></script>
	<script src="barcodes/CODE128.js"></script>

<style>
   a:link {    color: inherit;color: inherit; text-decoration: none;}

</style>
</head>
<body style="margin-top:0; margin-bottom:0; margin-left:0; margin-right:0; padding-top:10px; padding-bottom:30px; padding-left:0; padding-right:0; width:100%; background-color:#f5f5f5;">



  <table cellspacing="0" cellpadding="0" width="80%" align="center" style="background-color:#FFF; color:#666666; font-family: avenir, Arial, 'Times New Roman', Times, serif;">

	<!-- <table align="center" cellspacing="20" style="background-color: white;"> -->
    <tr>
      <td colspan="3" style="padding-top:10px; padding-bottom:10px; background-color:#f5f5f5;" align="left">
          <a href="../">  <img src="../imgs/assets/quick_shop_header.png" height="80px;" width="180px;" />
        </a><h5>Walk Through in SuperMarket</h5>
      </td>
    </tr>
    <tr style="background-color:#402161; height:3px; font-size:0px;">
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" style="background-color:#e9eaed; color:#000000; padding-top:10px; padding-bottom:10px; padding-left:5%;" align="left">
      <font size="4">Welcome in Next Generation Shopping</font>
      <font size="4" style="float: right;">
        <a href="" style="margin: 0px 20px 0px 10px;">Test Barcode</a>
        <a href="../billinghistory" style="margin: 0px 20px 0px 10px;">Billing History</a>
        <a href="../#About" style="margin: 0px 20px 0px 10px;">About</a>
        <a hreF="../#contact" style="margin: 0px 20px 0px 10px;">Contact</a>
        <a href="../mockup" TARGET="_blank" style="margin: 0px 20px 0px 10px;">Mockup</a>
      </font>
      </td>
    </tr>

</table>
<table align="center" width="80%" cellspacing="20" style="background-color: white;">


	<?php

	foreach($updates as $values){

		?>

		<tr style="background-color: white;">
				<td width="30%" style="text-align:center;">
						<img width="180" style="display: inline-block"	 height="auto" src="../imgs/upload/<?php echo $values->image;?>" alt="Mountain View" style="width:304px;height:228px;">
				</td>
				<td style="text-align:left;"  valign="top" width="25%">
				<h2 style="" >  <b>	<?php echo $values->title;?></b></h2>
				<!-- <p><span>Price: </span></p> -->
				<h3><p><span>Our Price: <strike style="color:red;">₹<?php echo $values->orignal_price;?></strike>  </span><span style="color:green;">
					&nbsp;₹<?php echo $values->our_price;?></span></p><h3>
				</td>
				<td width="25%" style="padding-top: 15px;" valign="top" >
						<img id="barcode3<?php echo $values->pid;?>"/>
				</td>
		</tr>

				<td style="text-align:left;padding-bottom: 50px;line-height: 28px;"  valign="top" width="280"  colspan="3">
						<?php    echo $string = str_replace('#', '<br/>', $values->detail);  ?>
				</td>

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

<script>
window.onload = function() {
    if (window.jQuery) {
        // jQuery is loaded
				var codes = <?php echo json_encode($updates) ?>;
				codes.forEach(function(entry) {
					var htmlID = "#barcode3"+entry.pid;
					var scan_code = entry.scan_code;
					$(htmlID).JsBarcode(scan_code,{format:"EAN",displayValue:true,fontSize:20, width:2,height:95});
				});
    }
}
</script>
</body>
</html>
