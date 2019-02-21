<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {

    public function siswa() {
        return $this->db->get('siswa')->row();
    }
    public function kelas() {
        return $this->db->get('kelas')->row();
    }

    public function random() {
        $this->db->order_by('rand()');
        return $this->db->get('soal')->result();
    }

    public function soal($config) {
        // $this->db->select('*');
        // $this->db->from('soal');
        // $this->db->join('record','soal.soal_pelajaran= record.id_pelajaran');
        // $this ->db-> order_by('FIELD(soal_id, id_soal)');
        // $this->db->order_by("soal_id",'DESC');
        $hasilquery = $this->db->query('SELECT * FROM soal  JOIN record  ON soal_pelajaran=id_pelajaran ORDER BY FIELD(soal_id,id_soal) DESC'.','.$config['per_page'], $this->uri->segment(1));
        // $hasilquery = $this->db->get('soal',$config['per_page'], $this->uri->segment(3));
        if ($hasilquery->num_rows() > 0) {
            foreach ($hasilquery->result() as $value) {
                $data[] = $value;
            }
            return $data;
        }
    }
}