<?php
  // $file = 'Mockup_Flow.pdf';
  $filename = 'Mockup_Flow.pdf';
  header('Content-type: application/pdf');
  header('Content-Disposition: inline; filename="' . $filename . '"');
  header('Content-Transfer-Encoding: binary');
  header('Accept-Ranges: bytes');
  @readfile($filename);
?>
