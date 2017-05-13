<?php

// sukuriame automobilių klasės objektą
include 'libraries/students.class.php';
$usersObj = new students();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $usersObj->getStudentListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio automobilius
$data = $usersObj->getStudentList($paging->size, $paging->first);	

// įtraukiame šabloną
include 'templates/student_list.tpl.php';

?>