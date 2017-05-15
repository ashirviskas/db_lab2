<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="robots" content="noindex">
		<title>Akademijos IS</title>
		<link rel="stylesheet" type="text/css" href="scripts/datetimepicker/jquery.datetimepicker.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="style/main.css" media="screen" />
		<script type="text/javascript" src="scripts/jquery-1.12.0.min.js"></script>
		<script type="text/javascript" src="scripts/datetimepicker/jquery.datetimepicker.full.min.js"></script>
		<script type="text/javascript" src="scripts/main.js"></script>
	</head>
	<body>
		<div id="body">
			<div id="header">
				<h3 id="slogan"><a href="index.php">Akademijos IS</a></h3>
			</div>
			<div id="content">
				<div id="topMenu">
					<ul class="float-left">
						<li><a href="index.php?module=user&action=list" title="Vartotojai"<?php if($module == 'user') { echo 'class="active"'; } ?>>Vartotojai</a></li>
                                                <li><a href="index.php?module=student&action=list" title="Studentai"<?php if($module == 'student') { echo 'class="active"'; } ?>>Studentai</a></li>
                                                <li><a href="index.php?module=mentor&action=list" title="Mentoriai"<?php if($module == 'mentor') { echo 'class="active"'; } ?>>Mentoriai</a></li>
                                                <li><a href="index.php?module=team&action=list" title="Komandos"<?php if($module == 'team') { echo 'class="active"'; } ?>>Komandos</a></li>
                                                <li><a href="index.php?module=academy&action=list" title="Akademijos"<?php if($module == 'akademija') { echo 'class="active"'; } ?>>Akademijos</a></li>
					</ul>
					<ul class="float-right">
						<li><a href="index.php?module=report&action=list" title="Ataskaitos"<?php if($module == 'report') { echo 'class="active"'; } ?>>Ataskaitos</a></li>
					</ul>
				</div>
				<div id="contentMain">
					<?php
						// įtraukiame veiksmų failą
						if(file_exists($actionFile)) {
							include $actionFile;
						}
					?>
					<div class="float-clear"></div>
				</div>
			</div>
			<div id="footer">

			</div>
		</div>
	</body>
</html>