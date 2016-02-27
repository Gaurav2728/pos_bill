<?php
function getSalt1() {
	return 'as1df';
}

function getSalt2() {
	return 'sd12re';
}

function getMD5Hash($str) {
	return md5(getSalt1().$str.getSalt2());
}

function getUserToken($userEmail) {
		return md5($_SERVER['REMOTE_ADDR']).getMD5Hash($userEmail.time()).md5(time());
}

function getEncryptBill($bill) {
	return base64_encode("QS".getSalt1().$bill.getSalt2()."QS");
}

?>
