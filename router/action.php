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
		$controllerGet->login();
		break;
	case 'logout':
		$controllerGet->logout();
		break;
	case 'getStudent':
		break;
	case 'getFaculty':
		$controllerGet->getFaculty();
		break;
	case 'test':
		$controllerGet->test($_POST['p0']);
		break;
	default:
		# code...
		break;
}
?>