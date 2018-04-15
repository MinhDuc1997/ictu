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
	case 'getFaculty':
		$controllerGet->getFaculty();
		break;
	case 'getMajors':
		$controllerGet->getMajors($_POST['facultyid']);
		break;
	case 'getCourse':
		$controllerGet->getCourse();
		break;
	case 'getClass':
		$controllerGet->getClass($_POST['majorsid'], $_POST['courseid']);
		break;
	case 'getStudent':
		$controllerGet->getStudent($_POST['classid']);
		break;
	case 'getAllInfoStudent':
		$controllerGet->getAllInfoStudent($_POST['studentid']);
		break;
	case 'getProvince':
		$controllerGet->getProvince();
		break;
	default:
		# code...
		break;
}
?>