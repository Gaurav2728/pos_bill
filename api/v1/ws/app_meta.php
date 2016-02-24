<?php
//-- This page for control APIs and meta info only.

//-- check version_notes of app; if it is force update then update it.
$app->get('/version_notes', function () {
  $userAgent = check_userAgent();
  if ($userAgent != null) {
    setResponse(200, keyMapper($userAgent, array('status' => 'force_update')));
  }
});

function check_userAgent() {
  global $userAgent;
  if ($userAgent == '') {
    showError(400, "User agent not found");
    return;
  }

  $userAgent_explode = explode("/",$userAgent);
  if (count($userAgent_explode) != 5) {
    showError(400, "User agent wrong provided");
    return;
  }

  $device_type = 'Android'; //-- 1= iOS 2 = Android
  if (hasPrefix(strtolower($userAgent_explode[4]), "ios")) {
    $device_type = 'iOS';
  } else if (hasPrefix(strtolower($userAgent_explode[4]), "android")) {
    $device_type = 'Android';
  } else {
    showError(400, "App type not found");
    return;
  }

  try {
    $sql = "SELECT `status`, `store_url` FROM `b1_version_notes` WHERE `app_version` LIKE '$userAgent_explode[1]' AND `device_type` = '$device_type'";
		$db = getDB();
		$stmt = $db->prepare($sql);
		$stmt->execute();
		$updates = $stmt->fetch(PDO::FETCH_OBJ);
		$db = null;
    if ($updates == '') {
      showError(400, "App version not found");
      return;
    }
		return $updates;
	} catch(PDOException $e) {
    showError(400, "Report this bug to Developer", $e->getMessage(), $e);
	}
}

?>
