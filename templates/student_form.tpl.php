<ul id="pagePath">
	<li><a href="index.php">Pradžia</a></li>
	<li><a href="index.php?module=<?php echo $module; ?>&action=list">Studentai</a></li>
	<li><?php if(!empty($id)) echo "Studento redagavimas"; else echo "Naujas studentas"; 
        //$teams = $teamsObj->getTeamList();
        //die("SUP {$teams}");?></li>
</ul>
<div class="float-clear"></div>
<div id="formContainer">
	<?php if($formErrors != null) { ?>
		<div class="errorBox">
			Neįvesti arba neteisingai įvesti šie laukai:
			<?php 
				echo $formErrors;
			?>
		</div>
	<?php } ?>
	<form action="" method="post">
		<fieldset>
			<legend>Studento informacija</legend>
			<p>
				<label class="field" for="fk_Teamid">Komanda<?php echo in_array('fk_Teamid', $required) ? '<span> *</span>' : ''; ?></label>
				<select id="fk_Teamid" name="fk_Teamid">                             
					<option value="-1">--------------</option>
					<?php
                                                //echo "<option value=`-1`>--------sdf------</option>";
                                                //die("Heyy");
						// išrenkame visas kategorijas sugeneruoti pasirinkimų lauką
						//$teams = $teamsObj->getTeamList();
						//foreach($teams as $key => $val) {
                                                //echo "<optgroup label='{$val['name']}'>";
                                                //die("SUP");
                                                $teams = $studentsObj->getTeamList();
                                                foreach($teams as $key => $val) {
                                                        $selected = "";
                                                        if(isset($data['fk_Teamid']) && $data['fk_Teamid'] == $val['id']) {
                                                                $selected = " selected='selected'";
                                                        }
                                                        echo "<option{$selected} value='{$val['id']}'>{$val['name']}</option>";
                                                }
                                                //}
						
					?>
				</select>
                        </p>
                        <p>
                                <label class="field" for="fk_Userid">Vartotojas<?php echo in_array('fk_Userid', $required) ? '<span> *</span>' : ''; ?></label>
				<select id="fk_Teamid" name="fk_Userid">                             
					<option value="-1">--------------</option>
					<?php                                                
                                                $users = $studentsObj->getUserList();
                                                foreach($users as $key => $val) {
                                                        $selected = "";
                                                        if(isset($data['fk_Userid']) && $data['fk_Userid'] == $val['id']) {
                                                                $selected = " selected='selected'";
                                                        }
                                                        echo "<option{$selected} value='{$val['id']}'>{$val['name']}</option>";
                                                }
                                                //}
						
					?>
				</select>
			</p>
		</fieldset>
		<p class="required-note">* pažymėtus laukus užpildyti privaloma</p>
		<p>
			<input type="submit" class="submit button" name="submit" value="Išsaugoti">
		</p>
		<?php if(isset($data['id'])) { ?>
			<input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
		<?php } ?>
	</form>
</div>