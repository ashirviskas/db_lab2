<?php
/**
 * Vartotojų redagavimo klasė
 *
 * @author ISK
 */

class users {

	private $vartotoju_lentele = '';
	private $studentu_lentele = '';
	private $komandu_lentele = '';
	private $mentoriu_lentele = '';
	
	public function __construct() {
		$this->vartotoju_lentele = config::DB_PREFIX . 'users';
		$this->studentu_lentele = config::DB_PREFIX . 'student';
		$this->komandu_lentele = config::DB_PREFIX . 'team';
		$this->mentoriu_lentele = config::DB_PREFIX . 'mentor';
	}
	
	/**
	 * Vartotojo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getUser($id) {
		$query = "  SELECT `{$this->vartotoju_lentele}`.`id`,
						   `{$this->vartotoju_lentele}`.`username`,
						   `{$this->vartotoju_lentele}`.`email`,
						   `{$this->vartotoju_lentele}`.`name`
					FROM `{$this->vartotoju_lentele}`
					WHERE `{$this->vartotoju_lentele}`.`id`='{$id}'";
		$data = mysql::select($query);
		return $data[0];
	}
	
	/**
	 * Vartotojo atnaujinimas
	 * @param type $data
	 */
	public function updateUser($data) {
		$query = "  UPDATE `{$this->vartotoju_lentele}`
					SET    `username`='{$data['username']}',
						   `email`='{$data['email']}',
						   `name`='{$data['name']}',
					WHERE `id`='{$data['id']}'";
		mysql::query($query);
	}

	/**
	 * Vartotojo įrašymas
	 * @param type $data
	 */
	public function insertUser($data) {
		$query = "  INSERT INTO `{$this->vartotoju_lentele}` 
								(
									`username`,
									`email`,
									`name`
								) 
								VALUES
								(
									'{$data['username']}',
									'{$data['email']}',
									'{$data['name']}'                                                                            
								)";
		mysql::query($query);
	}
	
	/**
	 * Vartotojų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getUserList($limit = null, $offset = null) {
		$query = "  SELECT `{$this->vartotoju_lentele}`.`name`,
                                    `{$this->vartotoju_lentele}`.`email`,
                                    `{$this->vartotoju_lentele}`.`username`,
                                    `{$this->vartotoju_lentele}`.`id`
					FROM `{$this->vartotoju_lentele}` LIMIT {$limit} OFFSET {$offset}";
		$data = mysql::select($query);
                //die("{$query}");
		return $data;
	}

	/**
	 * Vartotojų kiekio radimas
	 * @return type
	 */
	public function getUserListCount() {
		$query = "  SELECT COUNT(`{$this->vartotoju_lentele}`.`id`) AS `kiekis`
					FROM `{$this->vartotoju_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Vartotojo šalinimas
	 * @param type $id
	 */
	public function deleteUser($id) {
		$query = "  DELETE FROM `{$this->vartotoju_lentele}`
					WHERE `id`='{$id}'";
		mysql::query($query);
	}
	
	
}