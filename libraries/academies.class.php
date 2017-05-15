<?php
/**
 * Akademijų redagavimo klasė
 *
 * @author ISK
 */

class academies {

	private $vartotoju_lentele = '';
	private $studentu_lentele = '';
	private $komandu_lentele = '';
	private $mentoriu_lentele = '';
	private $akademiju_lentele = '';
	
	public function __construct() {
		$this->vartotoju_lentele = config::DB_PREFIX . 'users';
		$this->studentu_lentele = config::DB_PREFIX . 'student';
		$this->komandu_lentele = config::DB_PREFIX . 'team';
		$this->mentoriu_lentele = config::DB_PREFIX . 'mentor';
		$this->akademiju_lentele = config::DB_PREFIX . 'academy';
	}
	
	/**
	 * Akademijos išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getAcademy($id) {
		$query = "  SELECT `{$this->akademiju_lentele}`.`id`,
						   `{$this->akademiju_lentele}`.`name`,
						   `{$this->akademiju_lentele}`.`city`
					FROM `{$this->akademiju_lentele}`
					WHERE `{$this->akademiju_lentele}`.`id`='{$id}'";
		$data = mysql::select($query);
		return $data[0];
	}
	
	/**
	 * Akademijos atnaujinimas
	 * @param type $data
	 */
	public function updateAcademy($data) {
		$query = "  UPDATE `{$this->akademiju_lentele}`
					SET    `name`='{$data['name']}',
						   `city`='{$data['city']}'
					WHERE `id`='{$data['id']}'";
		mysql::query($query);
	}

	/**
	 * Akademijos įrašymas
	 * @param type $data
	 */
	public function insertAcademy($data) {
		$query = "  INSERT INTO `{$this->akademiju_lentele}` 
								(
									`city`,
									`name`
								) 
								VALUES
								(
									'{$data['city']}',
									'{$data['name']}'                                                                            
								)";
		mysql::query($query);
	}
	
	/**
	 * Akademijų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getAcademyList($limit = null, $offset = null) {
		$query = "  SELECT `{$this->akademiju_lentele}`.`id`,
                                    `{$this->akademiju_lentele}`.`name`,
                                    `{$this->akademiju_lentele}`.`city`
					FROM `{$this->akademiju_lentele}`                                        
                                        LIMIT {$limit} OFFSET {$offset}";
                                        
                                        
		$data = mysql::select($query);
                //die("{$query}");
		return $data;
	}

	/**
	 * Akademijų kiekio radimas
	 * @return type
	 */
	public function getAcademyListCount() {
		$query = "  SELECT COUNT(`{$this->akademiju_lentele}`.`id`) AS `kiekis`
					FROM `{$this->akademiju_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Akademijų šalinimas
	 * @param type $id
	 */
	public function deleteAcademy($id) {
		$query = "  DELETE FROM `{$this->akademiju_lentele}`
					WHERE `id`='{$id}'";
		mysql::query($query);
	}
}