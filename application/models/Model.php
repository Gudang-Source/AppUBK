<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {

    public function siswa() {
        return $this->db->get('siswa')->row();
    }

    public function soal($config) {
        $this->db->order_by('rand()');
        $hasilquery = $this->db->get('soal', $config['per_page'], $this->uri->segment(3));
        if ($hasilquery->num_rows() > 0) {
            foreach ($hasilquery->result() as $value) {
                $data[] = $value;
            }
            return $data;
        }
    }
}