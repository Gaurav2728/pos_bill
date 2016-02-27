<?php
function getSalt1() {
	return 'asdf89sdfjwer93aksdfhks932o4n23nsduf789sar23hsjdfs';
}

function getSalt2() {
	return 'sdresdfjs7823794234hjhwehrkwh87sdfhjsfsesdfhsd87sd';
}

function getMD5Hash($str) {
	return md5(getSalt1().$str.getSalt2());
}

function getUserToken($userEmail) {
		return md5($_SERVER['REMOTE_ADDR']).getMD5Hash($userEmail.time()).md5(time());
}

function getEncryptBill($bill) {
	return base64_encode("QUICKSHOPING".getSalt1().$bill.getSalt2()."QUICKSHOPING");
}

?>
