<?php
//-- gives you the product category list
$app->post('/bill/:paymentDone', function ($paymentDone) {
  $bill = addslashes(json_encode(getRequestBody()));
  try {
    $sql = "INSERT INTO `bill` (`bill_detail`, `payment`, `date`) VALUES ('$bill', '$paymentDone', NOW())";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $id = $db->lastInsertId();
    $db = null;
    if ($id == '') {
      showError(400, "Can't create bill.");
      return;
    }
    $bill2['bill_id'] = getEncryptBill($id);
    echo json_encode($bill2);
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
});

$app->get('/bill/:billid', function ($billid) {
  try {
    $sql = "SELECT * FROM `bill` WHERE `bid` = $billid";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $updates = $stmt->fetch(PDO::FETCH_OBJ);
    $db = null;
    if ($updates == '') {
      showError(400, "Bill not found.");
      return;
    }
    echo json_encode($updates);
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
});
 ?>
