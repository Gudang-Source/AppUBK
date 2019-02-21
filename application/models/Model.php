<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function siswa() {
        return $this->db->get('siswa')->row();
    }
}