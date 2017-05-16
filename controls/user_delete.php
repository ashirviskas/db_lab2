<?php

include 'libraries/users.class.php';
$usersObj = new users();

if(!empty($id)) {
	// patikriname, ar automobilis neįtrauktas į sutartis
	$count = $usersObj->getCountOfInstancesUsed($id);

	$removeErrorParameter = '';
	if($count == 0) {
		// šaliname automobilį
		$usersObj->deleteUser($id);
	} else {
		// nepašalinome, nes automobilis įtrauktas bent į vieną sutartį, rodome klaidos pranešimą
		$removeErrorParameter = '&remove_error=1';
	}

	// nukreipiame į automobilių puslapį
	header("Location: index.php?module={$module}&action=list{$removeErrorParameter}");
	die();
}

?>