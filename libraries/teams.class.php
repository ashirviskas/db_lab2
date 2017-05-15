<?php
/**
 * Komandų redagavimo klasė
 *
 * @author ISK
 */

class teams {

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
	 * Komandos išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getTeam($id) {
		$query = "  SELECT `{$this->komandu_lentele}`.`id`,
						   `{$this->komandu_lentele}`.`name`,
						   `{$this->komandu_lentele}`.`fk_Academyid`
					FROM `{$this->komandu_lentele}`
					WHERE `{$this->komandu_lentele}`.`id`='{$id}'";
		$data = mysql::select($query);
		return $data[0];
	}
	
	/**
	 * Komandos atnaujinimas
	 * @param type $data
	 */
	public function updateTeam($data) {
		$query = "  UPDATE `{$this->komandu_lentele}`
					SET    `name`='{$data['name']}',
						   `fk_Academyid`='{$data['fk_Academyid']}'
					WHERE `id`='{$data['id']}'";
		mysql::query($query);
	}

	/**
	 * Komandos įrašymas
	 * @param type $data
	 */
	public function insertTeam($data) {
		$query = "  INSERT INTO `{$this->komandu_lentele}` 
								(
									`fk_Academyid`,
									`name`
								) 
								VALUES
								(
									'{$data['fk_Academyid']}',
									'{$data['name']}'                                                                            
								)";
		mysql::query($query);
	}
	
	/**
	 * Komandų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getTeamList($limit = null, $offset = null) {
		$query = "  SELECT `{$this->komandu_lentele}`.`id`,
                                    `{$this->komandu_lentele}`.`name`,
                                    `{$this->akademiju_lentele}`.`name` AS `academy`
					FROM `{$this->komandu_lentele}` 
                                        LEFT JOIN `{$this->akademiju_lentele}` ON
                                        `{$this->komandu_lentele}`.`fk_Academyid`=`{$this->akademiju_lentele}`.`id`       
                                        LIMIT {$limit} OFFSET {$offset}";
                                        
                                        
		$data = mysql::select($query);
                //die("{$query}");
		return $data;
	}

	/**
	 * Komandų kiekio radimas
	 * @return type
	 */
	public function getTeamListCount() {
		$query = "  SELECT COUNT(`{$this->komandu_lentele}`.`id`) AS `kiekis`
					FROM `{$this->komandu_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Komandos šalinimas
	 * @param type $id
	 */
	public function deleteTeam($id) {
		$query = "  DELETE FROM `{$this->mentoriu_lentele}`
					WHERE `id`='{$id}'";
		mysql::query($query);
	}
        /**
	 * Akademijų sąrašo išrinkimas
	 * @return type
	 */
	public function getAcademyList() {
		$query = "  SELECT *
					FROM `{$this->akademiju_lentele}`";
		$data = mysql::select($query);
		
		return $data;
	}
	
	
}