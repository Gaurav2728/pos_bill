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
print_r($updates);

?><!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-barcode.min.js"></script>
	<script type="text/javascript" src="jquery-barcode.js"></script>
	 <script src="JsBarcode.js"></script>
	<script src="barcodes/EAN_UPC.js"></script>
	<script src="barcodes/CODE128.js"></script>

<style>
li {
    display: inline;
}
</style>
</head>
<body>
	<table>
	<?php

	foreach($updates as $values){

		?>

		<tr>
			<td width="180">



<ul>
  <li><img width="180" style="display: inline-block" height="100" src="../imgs/upload/<?php echo $values->image;?>" alt="Mountain View" style="width:304px;height:228px;">
	</li>
  <li><?php echo $values->title;?></li>
  <li>asa	<img id="barcode3<?php echo $values->pid;?>"/>

</li>
</ul>
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
					$(htmlID).JsBarcode("9780199532179",{format:"EAN",displayValue:true,fontSize:20, width:2,height:25});
				});
    }
}
</script>
</body>
</html>
