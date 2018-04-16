<?php
require_once 'autoload/autoload.php';

new autoload;

function view($view, $get){
	if($get == '')
		header('location: http://localhost/ictu/'.$view);
	else
		header('location: http://localhost/ictu/'.$view.'.php?'.$get);

}

function connect(){
	$con = new app_model_connect();
	return $con->con;	
}

$controllerGet = new app_controller_get();
$controllerUpdate = new app_controller_update();
$controllerInsert = new app_controller_insert();
?> 
