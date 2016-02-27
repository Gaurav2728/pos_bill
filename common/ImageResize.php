<?php

header('Content-Type: image/jpg');



	$directory = '../imgs/upload/';
	$imagename = $_REQUEST['imagename'];
	$width= $_REQUEST['width'];
	$height= $_REQUEST['height'];
	//$directory = $_REQUEST['directory'];
	 //$path= $_SERVER['DOCUMENT_ROOT'];


  $fullpath = $directory.$imagename;

	if (!file_exists($fullpath)) {
		$fullpath = $directory.'placeholder.png';
	}
 //  imagejpeg($fullpath);
	include('SimpleImage.php');
  $image = new SimpleImage();
	$image->load($fullpath);


	$oheight= $image->getheight();
	$owidth= $image->getWidth();

	//$height=100;
	//$width=300;
	if($oheight > $owidth)
	{
		$image->resizeToHeight($height);
		//$image->save('test1.jpg');
		  $image->output();
	}
	else
	{
		$image->resizeToWidth($width);
		//$image->save('test2.jpg');
	      $image->output();
	}


?>
