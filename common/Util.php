<?php
function hasPrefix($haystack, $needle) {
     $length = strlen($needle);
     return (substr($haystack, 0, $length) === $needle);
}

function hasSuffix($haystack, $needle) {
    $length = strlen($needle);
    if ($length == 0) {
        return true;
    }
    return (substr($haystack, -$length) === $needle);
}

function keyMapper($arr, $rewriteKeys) {
  $arr = json_decode(json_encode($arr), true);
  $newArr = array();
  foreach ($arr as $key => $value) {
    if (isset($rewriteKeys[$key])) {
      $key = $rewriteKeys[$key];
    }
    $newArr[$key] = $value;
  }
  return $newArr;
}

function modifyPDO($arr, $key, $val) {
  $arr = json_decode(json_encode($arr), true);
  $arr[$key] = $val;
  return $arr;
}

?>
