<?php

include 'libraries/students.class.php';
$studentsObj = new students();

if(!empty($id)) {
	// patikriname, ar automobilis neįtrauktas į sutartis
	$count = $studentsObj->getCountOfInstancesUsed($id);
        //die("Kiekis: {$count}");
	$removeErrorParameter = '';
	if($count == 0) {
		// šaliname automobilį
		$studentsObj->deleteStudent($id);
	} else {
		// nepašalinome, nes automobilis įtrauktas bent į vieną sutartį, rodome klaidos pranešimą
		$removeErrorParameter = '&remove_error=1';
	}

	// nukreipiame į automobilių puslapį
	header("Location: index.php?module={$module}&action=list{$removeErrorParameter}");
	die();
}

?>