<?php
//-- This page for Product Info

//-- gives you the product category list
$app->get('/product/category', function () {
  try {
    $sql = "SELECT * FROM `product_cat_list`";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $updates = $stmt->fetchAll(PDO::FETCH_OBJ);
    $db = null;
    if (count($updates) == 0) {
      showError(400, "Product category list not available.");
      return;
    }
    echo json_encode($updates);
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
});

//-- check product detail by pid and return product data
$app->get('/product/:pid', function ($pid) {
  $response = getProductIdInfo($pid);
  if ($response) {
    echo json_encode(modifyPDO($response, 'offers', getOfferList($response->pid)));
  }
});

//-- check product detail by pid and return product data
$app->get('/product/scan/:sid', function ($sid) {
  $response = getProductScanInfo($sid);
  if ($response) {
    echo json_encode($response);
  }
});

//-- check product detail by pid and return product data
$app->get('/product/:pid/FREE', function ($pid) {
  $response = getProductIdInfo($pid);
  if ($response) {
    echo json_encode($response);
  }
});

//-- this will give you product offer details
$app->get('/product/:pid/OFFERS', function ($pid) {
  $response = getOfferList($pid);
  if ($response != null) {
    echo json_encode($response);
  } else {
    echo json_encode([]);
  }
});


//---------------------
function getProductIdInfo($pid) {
  try {
    $sql = "SELECT * FROM `product_list` WHERE `pid` = $pid AND `active` = 'YES'";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $update = $stmt->fetch(PDO::FETCH_OBJ);
    $db = null;
    if ($update == '') {
      showError(400, "Product not available.");
      return;
    }
    return $update;
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
}

function getProductScanInfo($sid) {
  try {
    $sql = "SELECT * FROM `product_list` WHERE `scan_code` = '$sid' AND `active` = 'YES'";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $update = $stmt->fetch(PDO::FETCH_OBJ);
    $db = null;
    if ($update == '') {
      showError(400, "Product not available.");
      return;
    }
    return modifyPDO($update, 'offers', getOfferList($update->pid));
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
}

function getOfferList($pid) {
  try {
    $sql = "SELECT * FROM `offer_list` WHERE `pid` = $pid AND `active` = 'YES'";
    $db = getDB();
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $updates = $stmt->fetchAll(PDO::FETCH_OBJ);
    $db = null;
    // if (count($updates) == 0) {
    //   showError(400, "Product not available.");
    //   return;
    // }
    return $updates;
  } catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
  }
}

?>
