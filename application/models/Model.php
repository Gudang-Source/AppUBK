<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function cek_login($table, $where) {
		return $this->db->get_where($table, $where);
	}

    public function siswa($table,$where) {
        return $this->db->get_where($table,$where);
    }
    public function kelas($table,$where) {
        return $this->db->get_where($table,$where)->row();
    }
    public function ada_ujian($id_kelas) {
        // return $this->db->get_where($table, $where);
        // return $this->db->join('kelas','ujian.id_kelas=kelas.id_kelas');
        $this->db->select('*');
        $this->db->from('ujian');
        $this->db->join('kelas', 'ujian.id_kelas = kelas.id_kelas');
        $this->db->join('pelajaran', 'ujian.id_pelajaran = pelajaran.id_pelajaran');
        $this->db->where('ujian.id_kelas',$id_kelas);
        return $query = $this->db->get();
    }

    public function random() {
        $this->db->select('*');
        $this->db->from('soal');
        $this->db->join('ujian','ujian.id_pelajaran=soal.soal_pelajaran');
        $this->db->join('siswa','ujian.id_kelas=siswa.id_kelas');
        $this->db->order_by('rand()');
        return $this->db->get()->result();
    }
    public function cek_record($siswa){
        $this->db->select('*');
        $this->db->from('record');
        $this->db->join('siswa','siswa.id_siswa=record.id_siswa');
        $this->db->join('soal','soal.soal_pelajaran=record.id_pelajaran');
        return $this->db->get();
    }

    public function soal($config) {
            $this->db->join('record','soal.soal_pelajaran= record.id_pelajaran');
            $this->db->join('siswa','siswa.id_siswa= record.id_siswa');
            $this->db->join('ujian','siswa.id_kelas= ujian.id_kelas','soal.soal_pelajaran=ujian.id_pelajaran');
            $this ->db->order_by('FIELD(soal.soal_id, record.id_soal)');
            $hasilquery = $this->db->get('soal', $config['per_page'], $this->uri->segment(3));
            foreach ($hasilquery->result() as $value) {
                $data[] = $value;
            }
            return $data;
    }
    public function cek_jawaban($table, $where){
            return $this->db->get_where($table,$where);
    }
}