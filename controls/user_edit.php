<?php

include 'libraries/users.class.php';
$usersObj = new users();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('name', 'email', 'username');


// vartotojas paspaudė išsaugojimo mygtuką
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
		'name' => 'alfanum',
		'username' => 'alfanum',
		'email' => 'email'
		);

	// sukuriame laukų validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required);

	// laukai įvesti be klaidų
	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// atnaujiname duomenis
		$usersObj->updateUser($dataPrepared);

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
	$data = $usersObj->getUser($id);
}

// įtraukiame šabloną
include 'templates/user_form.tpl.php';

?>