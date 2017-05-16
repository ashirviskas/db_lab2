<?php
	
include 'libraries/mentors.class.php';
$mentorsObj = new mentors();

include 'libraries/teams.class.php';
$teamsObj = new teams();

include 'libraries/students.class.php';
$studentsObj = new students();

$formErrors = null;
$data = array();

// nustatome privalomus laukus
$required = array('fk_Userid', 'fk_Teamid');


// paspaustas išsaugojimo mygtukas
if(!empty($_POST['submit'])) {
	// nustatome laukų validatorių tipus
	$validations = array (
		'fk_Userid' => 'positivenumber',
		'fk_Teamid' => 'positivenumber');

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations, $required);

	// laukai įvesti be klaidų
	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();
		
		// įrašome naują pasaugą ir gauname jos id
		//$dataPrepared['id'] = $servicesObj->insertService($dataPrepared);
		
		// įrašome paslaugų kainas
		$mentorsObj->insertMentors($dataPrepared);
                //die("{$_POST}");

		// nukreipiame į modelių puslapį
		header("Location: index.php?module={$module}&action=list");
		die();
	} else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// gauname įvestus laukus
		$data = $_POST;
                //die("{$data}");
		if(isset($_POST['kainos']) && sizeof($_POST['kainos']) > 0) {
			$i = 0;
			foreach($_POST['kainos'] as $key => $val) {
				$data['paslaugos_kainos'][$i]['kaina'] = $val;
				$data['paslaugos_kainos'][$i]['galioja_nuo'] = $_POST['datos'][$key];
				$data['paslaugos_kainos'][$i]['neaktyvus'] = $_POST['neaktyvus'][$key];
				$i++;
			}
		}
	}
}

// įtraukiame šabloną
include 'templates/mentor_form.tpl.php';

?>