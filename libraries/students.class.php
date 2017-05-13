<?php
/**
 * Studentų redagavimo klasė
 *
 * @author ISK
 */

class students {

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
	 * Studento išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getStudent($id) {
		$query = "  SELECT `{$this->studentu_lentele}`.`id`,
						   `{$this->studentu_lentele}`.`fk_Teamid`,
						   `{$this->studentu_lentele}`.`fk_Userid`
					FROM `{$this->studentu_lentele}`
					WHERE `{$this->studentu_lentele}`.`id`='{$id}'";
		$data = mysql::select($query);
		return $data[0];
	}
	
	/**
	 * Studento atnaujinimas
	 * @param type $data
	 */
	public function updateStudent($data) {
		$query = "  UPDATE `{$this->studentu_lentele}`
					SET    `fk_Teamid`='{$data['fk_Teamid']}',
						   `fk_Userid`='{$data['fk_Userid']}'
					WHERE `id`='{$data['id']}'";
		mysql::query($query);
	}

	/**
	 * Studento įrašymas
	 * @param type $data
	 */
	public function insertStudent($data) {
		$query = "  INSERT INTO `{$this->studentu_lentele}` 
								(
									`fk_Teamid`,
									`fk_Userid`
								) 
								VALUES
								(
									'{$data['fk_Teamid']}',
									'{$data['fk_Userid']}'                                                                            
								)";
		mysql::query($query);
	}
	
	/**
	 * Studentų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getStudentList($limit = null, $offset = null) {
		$query = "  SELECT `{$this->studentu_lentele}`.`id`,
                                    `{$this->vartotoju_lentele}`.`email`,
                                    `{$this->vartotoju_lentele}`.`username`,
                                    `{$this->vartotoju_lentele}`.`name`,
                                    `{$this->komandu_lentele}`.`name` AS `team`
					FROM `{$this->studentu_lentele}` 
                                        LEFT JOIN `{$this->vartotoju_lentele}` ON
                                        `{$this->studentu_lentele}`.`fk_Userid`=`{$this->vartotoju_lentele}`.`id`    
                                        LEFT JOIN `{$this->komandu_lentele}` ON
                                        `{$this->studentu_lentele}`.`fk_Teamid`=`{$this->komandu_lentele}`.`id`    
                                        LIMIT {$limit} OFFSET {$offset}";
                                        
                                        
		$data = mysql::select($query);
                //die("{$query}");
		return $data;
	}

	/**
	 * Studentų kiekio radimas
	 * @return type
	 */
	public function getStudentListCount() {
		$query = "  SELECT COUNT(`{$this->studentu_lentele}`.`id`) AS `kiekis`
					FROM `{$this->studentu_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Studento šalinimas
	 * @param type $id
	 */
	public function deleteStudent($id) {
		$query = "  DELETE FROM `{$this->studentu_lentele}`
					WHERE `id`='{$id}'";
		mysql::query($query);
	}
	
	
}