<?php
	class app_model_connect{
		public $con;

		function __construct(){
			$this->con = new mysqli ('localhost', 'root', '', 'ictu');
		} 
	}
?>