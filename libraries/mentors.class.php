<?php
/**
 * Studentų redagavimo klasė
 *
 * @author ISK
 */

class mentors {

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
	 * Mentoriaus išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getMentor($id) {
		$query = "  SELECT `{$this->mentoriu_lentele}`.`id`,
						   `{$this->mentoriu_lentele}`.`fk_Teamid`,
						   `{$this->mentoriu_lentele}`.`fk_Userid`
					FROM `{$this->mentoriu_lentele}`
					WHERE `{$this->mentoriu_lentele}`.`id`='{$id}'";
		$data = mysql::select($query);
		return $data[0];
	}
	
	/**
	 * Mentoriaus atnaujinimas
	 * @param type $data
	 */
	public function updateMentor($data) {
		$query = "  UPDATE `{$this->mentoriu_lentele}`
					SET    `fk_Teamid`='{$data['fk_Teamid']}',
						   `fk_Userid`='{$data['fk_Userid']}'
					WHERE `id`='{$data['id']}'";
		mysql::query($query);
	}

	/**
	 * Mentoriaus įrašymas
	 * @param type $data
	 */
	public function insertMentor($data) {
		$query = "  INSERT INTO `{$this->mentoriu_lentele}` 
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
	 * Mentorių sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getMentorList($limit = null, $offset = null) {
		$query = "  SELECT `{$this->mentoriu_lentele}`.`id`,
                                    `{$this->vartotoju_lentele}`.`email`,
                                    `{$this->vartotoju_lentele}`.`username`,
                                    `{$this->vartotoju_lentele}`.`name`,
                                    `{$this->komandu_lentele}`.`name` AS `team`
					FROM `{$this->mentoriu_lentele}` 
                                        LEFT JOIN `{$this->vartotoju_lentele}` ON
                                        `{$this->mentoriu_lentele}`.`fk_Userid`=`{$this->vartotoju_lentele}`.`id`    
                                        LEFT JOIN `{$this->komandu_lentele}` ON
                                        `{$this->mentoriu_lentele}`.`fk_Teamid`=`{$this->komandu_lentele}`.`id`    
                                        LIMIT {$limit} OFFSET {$offset}";
                                        
                                        
		$data = mysql::select($query);
                //die("{$query}");
		return $data;
	}

	/**
	 * Mentorių kiekio radimas
	 * @return type
	 */
	public function getMentorListCount() {
		$query = "  SELECT COUNT(`{$this->mentoriu_lentele}`.`id`) AS `kiekis`
					FROM `{$this->mentoriu_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Studento šalinimas
	 * @param type $id
	 */
	public function deleteMentor($id) {
		$query = "  DELETE FROM `{$this->mentoriu_lentele}`
					WHERE `id`='{$id}'";
		mysql::query($query);
	}
        /**
	 * Paslaugos kainų įrašymas
	 * @param type $data
	 */
	public function insertMentors($data) {
		if(isset($data['fk_Userid']) && sizeof($data['fk_Userid']) > 0) {
			foreach($data['fk_Userid'] as $key=>$val) {
                            //echo " Sup $key";
                            //die("{$key}");
				if($data['neaktyvus'] == array() || $data['neaktyvus'][$key] == 0) {
					$query = "  INSERT INTO `{$this->mentoriu_lentele}`
											(
												`fk_Userid`,
												`fk_Teamid`
											)
											VALUES
											(
												'{$data['fk_Userid'][$key]}',
												'{$data['fk_Teamid'][$key]}'
											)";
                                        //die("kfkdf {$query}");
					mysql::query($query);
				}
			}
                        //die();
		}
	}
	
	
}