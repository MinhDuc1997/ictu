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
	case 'updateData':
		$controllerUpdate->updateGeneralInfo($_POST['studentid'],$_POST['firstname'], $_POST['lastname'], $_POST['gender'], $_POST['email'], $_POST['phone'], $_POST['birthday']);
		$controllerUpdate->updateClassInfo($_POST['studentid'], $_POST['classid']);
		$controllerUpdate->updateProvinceInfo($_POST['studentid'], $_POST['provinceid']);
		$controllerUpdate->updateParentInfo($_POST['studentid'], $_POST['parentname'], $_POST['parentphone']);
		$controllerUpdate->updateResidenceInfo($_POST['studentid'], $_POST['address']);
		break;
	case 'insertData':
		$controllerInsert->addStudent($_POST['studentid'], $_POST['firstname'], $_POST['lastname'], $_POST['birthday'], $_POST['gender'], $_POST['provinceid'], $_POST['email'], $_POST['phone'], $_POST['classid']);
		$controllerInsert->addParent($_POST['studentid'], $_POST['parentname'], $_POST['parentphone']);
		$controllerInsert->addResidence($_POST['studentid'], $_POST['provinceid'], $_POST['address']);
		break;
	case 'search':
		$controllerGet->search($_POST['search_val']);
		break;
	default:
		# code...
		break;
}
?>