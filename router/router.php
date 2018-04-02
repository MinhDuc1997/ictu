<?php
require_once 'autoload/autoload.php';

new autoload;

function view($view, $get){
	if($get == '')
		header('location: http://localhost/ictu/'.$view);
	else
		header('location: http://localhost/ictu/'.$view.'.php?'.$get);

}
?> 
