<?php
require_once 'router.php';

/*
|--------------------------------------------------------------------------
| Bên dưới gọi tới các Controller, dùng view() để trả về 1 view
|--------------------------------------------------------------------------
|
|
*/

switch($_POST['action']) {
	case 'login':
		$controller->login();
		break;
	case 'logout':
		$controller->logout();
		break;
	default:
		# code...
		break;
}
?>