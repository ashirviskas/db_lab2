<?php

// sukuriame automobilių klasės objektą
include 'libraries/academies.class.php';
$academiesObj = new academies();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $academiesObj->getAcademyListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio automobilius
$data = $academiesObj->getAcademyList($paging->size, $paging->first);	

// įtraukiame šabloną
include 'templates/academy_list.tpl.php';

?>