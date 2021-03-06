<?php

include 'libraries/students.class.php';
$studentsObj = new students();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('fk_Teamid', 'fk_Userid');

// vartotojas paspaudė išsaugojimo mygtuką
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
		'fk_Teamid' => 'alfanum',
		'fk_Userid' => 'alfanum'
		);

	// sukuriame laukų validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required, $maxLengths);

	// laukai įvesti be klaidų
	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();
		// atnaujiname duomenis
		$studentsObj->updateStudent($dataPrepared);

		// nukreipiame vartotoją į automobilių puslapį
		header("Location: index.php?module={$module}&action=list");
		die();
	} else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// laukų reikšmių kintamajam priskiriame įvestų laukų reikšmes
		$data = $_POST;
	}
} else {
	// išrenkame elemento duomenis ir jais užpildome formos laukus.
	$data = $studentsObj->getStudent($id);
}

// įtraukiame šabloną
include 'templates/student_form.tpl.php';

?>