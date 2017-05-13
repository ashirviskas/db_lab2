<?php

// sukuriame automobilių klasės objektą
include 'libraries/users.class.php';
$usersObj = new users();

// suskaičiuojame bendrą įrašų kiekį
$elementCount = $usersObj->getUserListCount();

// sukuriame puslapiavimo klasės objektą
include 'utils/paging.class.php';
$paging = new paging(config::NUMBER_OF_ROWS_IN_PAGE);

// suformuojame sąrašo puslapius
$paging->process($elementCount, $pageId);

// išrenkame nurodyto puslapio automobilius
$data = $usersObj->getUserList($paging->size, $paging->first);	

// įtraukiame šabloną
include 'templates/user_list.tpl.php';

?>