<?php

$app->get('/test', function () {
  // for status code 200, no need to write "$app->response->setStatus(200);"
  global $app;
  $app->response->setStatus(200);
  echo '{"response":"API check successful"}';
});

$app->get('/test/:id', function ($a) {
  // for status code 200, no need to write "$app->response->setStatus(200);"
  global $app;
  $app->response->setStatus(200);
  echo '{"response":"API check successful '.$a.'"}';
});


$app->get('/usersss','getAllUsers');
function getAllUsers() {
  $sql = "SELECT * FROM `tbl_user`";
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
		$stmt->execute();
		$updates = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($updates);
	} catch(PDOException $e) {
	    //error_log($e->getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":'. $e->getMessage() .'}}';
	}
}

$app->post('/signup','postSignupUser');
function postSignupUser() {
	$signup = getRequestBody();
	$sql = "INSERT INTO `tbl_user` (`full_name`, `email`, `login_type`, `password`, `phone`, `DOB`, `wed_anni`, `user_image`, `user_token`, `created_on`, `updated_on`)
  VALUES (:full_name, :email, :login_type, :password, :phone, :DOB, :wed_anni, :user_image, :user_token, UTC_TIMESTAMP(), UTC_TIMESTAMP())";
	try {
		$db = getDB();

		$stmt = $db->prepare($sql);
		$stmt->bindParam("full_name", $signup->full_name);
		$stmt->bindParam("email", $signup->email);
    $stmt->bindParam("login_type", $signup->login_type);
    $password = getMD5Hash($signup->password);
    $stmt->bindParam("password", $password);
    $stmt->bindParam("phone", $signup->phone);
    $stmt->bindParam("DOB", $signup->DOB);
    $stmt->bindParam("wed_anni", $signup->wed_anni);
    $stmt->bindParam("user_image", $signup->user_image);
    $user_token = getUserToken($signup->email);
    $stmt->bindParam("user_token", $user_token);

		$stmt->execute();
		$user_id = $db->lastInsertId();
		$db = null;
		getUserInfo($user_id);
	} catch(PDOException $e) {
		//error_log($e->getMessage(), 3, '/var/tmp/php.log');
    if ($e->getCode() == '23000') {
      setResponseCode(400);
      showError(400, "400 Bad request","User already exist.", $e->getMessage());
    } else {
      echo json_encode($e);
    }
	}
}

function getUserInfo($user_id) {
	$sql = "SELECT `user_id`, `full_name`, `email`, `login_type`, `phone`, `DOB`, `wed_anni`, `user_image`, `user_token` FROM `tbl_user` WHERE `user_id` = :user_id";
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
    $stmt->bindParam("user_id", $user_id);
		$stmt->execute();
		$updates = $stmt->fetch(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($updates);
	} catch(PDOException $e) {
	    //error_log($e->getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":'. $e->getMessage() .'}}';
	}
}

?>
