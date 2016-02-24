<?php
//-- This APIs for user manager operations:Signup, login, userinfo, update, logout

//-- manual signup page
$app->post('/register_user', function () {
	$signup = getRequestBody();
	$signup_valid = userDataValidate($signup);
	if ($signup_valid == null) {
		try {
			$sql = "INSERT INTO `b1_users` (`user_id`, `first_name`, `last_name`, `email_id`, `password`, `access_token`, `is_fb_user`, `fb_id`, `profile_image`, `is_active`, `created_on`, `updated_on`)
			 VALUES (NULL, ':first_name', ':last_name', ':email_id', ':password', ':access_token', 'NO', '', ':profile_image', 'YES', 'NOW()', 'NOW()')";
			$db = getDB();
			$stmt = $db->prepare($sql);

			$stmt->bindParam("first_name", $signup->full_name);
			$stmt->bindParam("last_name", $signup->email);
			$stmt->bindParam("email_id", $signup->login_type);
			$password = getMD5Hash($signup->password);
			$stmt->bindParam("password", $password);
			$user_token = getUserToken($signup->email);
			$stmt->bindParam("access_token", $user_token);
			$stmt->bindParam("profile_image", $signup->phone);

			$stmt->execute();
			$updates = $stmt->fetch(PDO::FETCH_OBJ);
			$db = null;
			echo json_encode($updates);
		} catch(PDOException $e) {
			showError(400, "Report this bug to Developer", $e->getMessage(), $e);
		}
	} else {
			showError(425, "Unprocessed Data (Validation Failed)", $signup_valid);
	}

});

//-- get single user info
private function getUserInfoID($user_id) {
	$sql = "SELECT `user_id`, `first_name`, `last_name`, `email_id`, `access_token`, `is_fb_user`, `fb_id`, `profile_image`, `is_active`, `created_on`, `updated_on` FROM `b1_users` WHERE `user_id` = :user_id";
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
    $stmt->bindParam("user_id", $user_id);
		$stmt->execute();
		$updates = $stmt->fetch(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($updates);
	} catch(PDOException $e) {
		showError(400, "Report this bug to Developer", $e->getMessage(), $e);
	}
}

private function getUserInfoTokem($access_token) {
	$sql = "SELECT `user_id` FROM `b1_users` WHERE `access_token` = :access_token";
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
    $stmt->bindParam("access_token", $access_token);
		$stmt->execute();
		$updates = $stmt->fetch(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($updates);
	} catch(PDOException $e) {
		showError(400, "Report this bug to Developer", $e->getMessage(), $e);
	}
}

?>
