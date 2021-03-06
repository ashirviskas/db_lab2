<ul id="pagePath">
	<li><a href="index.php">Pradžia</a></li>
	<li>Mentoriai</li>
</ul>
<div id="actions">
	<a href='index.php?module=<?php echo $module; ?>&action=create'>Naujas mentorius</a>
</div>
<div class="float-clear"></div>

<?php if(isset($_GET['remove_error'])) { ?>
	<div class="errorBox">
		Mentorius nebuvo pašalintas, nes šiaip.
	</div>
<?php } ?>

<table class="listTable">
	<tr>
		<th>ID</th>
		<th>Vardas</th>
		<th>Email</th>
		<th>Username</th>
		<th>Komanda</th>
		<th></th>
	</tr>
	<?php
		// suformuojame lentelę
		foreach($data as $key => $val) {
			echo
				"<tr>"
					. "<td>{$val['id']}</td>"
					. "<td>{$val['name']}</td>"
					. "<td>{$val['email']}</td>"
					. "<td>{$val['username']}</td>"
					. "<td>{$val['team']}</td>"
					. "<td>"
						. "<a href='#' onclick='showConfirmDialog(\"{$module}\", \"{$val['id']}\"); return false;' title=''>šalinti</a>&nbsp;"
						. "<a href='index.php?module={$module}&action=edit&id={$val['id']}' title=''>redaguoti</a>"
					. "</td>"
				. "</tr>";
		}
	?>
</table>

<?php
	// įtraukiame puslapių šabloną
	include 'templates/paging.tpl.php';
?>