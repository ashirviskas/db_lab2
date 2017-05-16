<ul id="pagePath">
	<li><a href="index.php">Pradžia</a></li>
	<li><a href="index.php?module=<?php echo $module; ?>&action=list">Vartotojai</a></li>
	<li><?php if(!empty($id)) echo "Vartotojo redagavimas"; else echo "Naujas vartotojas"; ?></li>
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
			<legend>Vartotojo informacija</legend>
			<p>
				<label class="field" for="name">Vardas<?php echo in_array('name', $required) ? '<span> *</span>' : ''; ?></label>
				<input type="text" id="name" name="name" class="textbox textbox-70" value="<?php echo isset($data['name']) ? $data['name'] : ''; ?>">
			</p>
                        <p>
				<label class="field" for="rida">Username<?php echo in_array('username', $required) ? '<span> *</span>' : ''; ?></label>
				<input type="text" id="rida" name="username" class="textbox textbox-70" value="<?php echo isset($data['username']) ? $data['username'] : ''; ?>">
			</p>
			<p>
				<label class="field" for="email">Email<?php echo in_array('email', $required) ? '<span> *</span>' : ''; ?></label>
				<input type="text" id="name" name="email" class="textbox textbox-70 " value="<?php echo isset($data['email']) ? $data['email'] : ''; ?>">
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