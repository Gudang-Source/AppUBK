<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function guru($table){
        return $this->db->get($table);
    }
}
