<?php
header("Access-Control-Allow-Origin: *");
require_once '../../common/db.php';
require_once '../../common/common.php';
require_once '../../common/Util.php';
require_once 'Slim/Slim.php';
\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();
$app->response->headers->set('Content-Type', 'application/json');
$contentType  = $app->request->headers->get('Content-Type');
$userAgent    = $app->request->headers->get('UserAgent');
$userToken    = $app->request->headers->get('User-Token');
$appToken     = $app->request->headers->get('App-Token');

require_once 'include_ws.php';
$app->notFound(function () use ($app) {
    showError(404, "404 page not found.","May be you have tried wrong API name or method type. For assisting help, please show this error with complete request to Developer Support Team.");
});
$app->run();

function setResponseCode($code) {
  global $app;
  $app->response->setStatus($code);
}

function setResponseBody($res) {
  echo json_encode($res);
}

function setResponse($code = 200, $res) {
  setResponseCode($code);
  setResponseBody($res);
}

function getRequestBody() {
  global $app;
  $request = $app->request();
  if ($request) {
    return json_decode($request->getBody());
  } else {
    return null;
  }
}

function showError($errorCode, $errorMessage, $otherMsg = null, $errorObj = null) {
  setResponseCode($errorCode);
	$response['error']['msg'] = $errorMessage;
  if ($otherMsg != '') {
    $response['error']['other'] = $otherMsg;
  }
  //error_log($e->getMessage(), 3, '/var/tmp/php.log');
  setResponseBody($response);
}
?>
