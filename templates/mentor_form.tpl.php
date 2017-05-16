<ul id="pagePath">
	<li><a href="index.php">Pradžia</a></li>
	<li><a href="index.php?module=<?php echo $module; ?>&action=list">Mentoriai</a></li>
	<li><?php if(!empty($id)) echo "Paslaugos redagavimas"; else echo "Naujas mentorius"; ?></li>
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
			<legend>Mentoriai</legend>
			<div class="childRowContainer">
				<div class="labelLeft<?php if(empty($data['paslaugos_kainos']) || sizeof($data['paslaugos_kainos']) == 0) echo ' hidden'; ?>">Vartotojas</div>
				<div class="labelRight<?php if(empty($data['paslaugos_kainos']) || sizeof($data['paslaugos_kainos']) == 0) echo ' hidden'; ?>">Komanda</div>
				<div class="float-clear"></div>
				<?php
					if(empty($data['paslaugos_kainos']) || sizeof($data['paslaugos_kainos']) == 0) {
				?>
					
					<div class="childRow hidden">
					<select id="fk_Userid" name="fk_Userid[]">                             
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
                                        <select id="fk_Teamid" name="fk_Teamid[]" disabled="disabled">
                                            <option value="-1">--------------</option>
                                                <?php $teams = $studentsObj->getTeamList();
                                                    foreach($teams as $key => $val) {
                                                        $selected = "";
                                                        if(isset($data['fk_Teamid']) && $data['fk_Teamid'] == $val['id']) {
                                                        $selected = " selected='selected'";
                                                    }
                                                        echo "<option{$selected} value='{$val['id']}'>{$val['name']}</option>";
                                                    }
                                                    ?>
                                        </select>
						<!--<input type="text" name="vartotojai[]" value="" class="textbox textbox-70" disabled="disabled" />
						<input type="text" name="komandos[]" value="" class="textbox textbox-70" disabled="disabled" />-->
						<input type="hidden" class="isDisabledForEditing" name="neaktyvus[]" value="0" />
						<a href="#" title="" class="removeChild">šalinti</a>
					</div>
					<div class="float-clear"></div>
					
				<?php
					}
				?>
			</div>
			<p id="newItemButtonContainer">
				<a href="#" title="" class="addChild">Pridėti</a>
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