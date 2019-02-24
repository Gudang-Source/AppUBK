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
        return $this->db->get();
    }
    public function cek_record($siswa){
        $this->db->select('*');
        $this->db->from('record');
        $this->db->join('siswa','siswa.id_siswa=record.id_siswa');
        $this->db->join('soal','soal.soal_pelajaran=record.id_pelajaran');
        return $this->db->get();
    }

    public function soal($config,$siswa) {
            $id_soal=$this->db->query("SELECT record.id_soal,ujian.id_ujian,siswa.id_siswa FROM record JOIN siswa ON siswa.id_siswa=$siswa JOIN ujian ON ujian.id_kelas=siswa.id_kelas WHERE record.id_siswa=siswa.id_siswa AND record.id_pelajaran=ujian.id_pelajaran")->row();
            $arrayId=explode(",",$id_soal->id_soal);
            if($config=="select"){
                $arrayId2=implode(",", $arrayId);
                $hasilquery=$this->db->query("SELECT * FROM soal LEFT OUTER JOIN ujian_jawaban ON ujian_jawaban.ujian_id=$id_soal->id_ujian AND ujian_jawaban.siswa_id=$id_soal->id_siswa AND ujian_jawaban.soal_id=soal.soal_id WHERE soal.soal_id IN ($arrayId2) ORDER BY FIELD(soal.soal_id,$arrayId2)"); 
            }else{
                $this->db->join('ujian','ujian.id_ujian='.$id_soal->id_ujian);
                $this->db->join('siswa','siswa.id_siswa='.$siswa);
                $this->db->where_in('soal.soal_id',$arrayId);
                $order = sprintf('FIELD(soal.soal_id, %s)', implode(', ', $arrayId));
                $this->db->order_by($order);
                $hasilquery=$this->db->get('soal',$config['per_page'], $this->uri->segment(3));
            }
            foreach ($hasilquery->result() as $value) {
                $data[] = $value;
            }
            return $data;
    }
    public function cek_jawaban($table, $where){
            return $this->db->get_where($table,$where);
    }
}