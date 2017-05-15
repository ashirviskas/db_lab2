<?php

// sukuriame automobilių klasės objektą
include 'libraries/mentors.class.php';
$mentorsObj = new mentors();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $mentorsObj->getMentorListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio automobilius
$data = $mentorsObj->getMentorList($paging->size, $paging->first);	

// įtraukiame šabloną
include 'templates/mentor_list.tpl.php';

?>