<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Model extends CI_Model {
    public function guru($table){
        if(isset($_POST['submit'])){
            $nama=$_POST['Nama'];
            $NIP=$_POST['NIP'];
            $this->db->query("INSERT INTO guru(nama, NIP) VALUES ('$nama', '$NIP')");
        }
        return $this->db->get($table);
    }
	
	public function perSoal($soal_pelajaran) {
        $this->db->where('soal_pelajaran', $soal_pelajaran);
        if(isset($_POST['submit'])){
            $soal_deskripsi=$_POST['soal_deskripsi'];
            $soal_jwb1=$_POST['soal_jwb1'];
            $soal_jwb2=$_POST['soal_jwb2'];
            $soal_jwb3=$_POST['soal_jwb3'];
            $soal_jwb4=$_POST['soal_jwb4'];
            $soal_jwb5=$_POST['soal_jwb5'];
            if($_POST['soal_jawaban']=="soal_jwb1"){
                $soal_jawaban=$_POST['soal_jwb1'];
            }else if($_POST['soal_jawaban']=="soal_jwb2"){
                $soal_jawaban=$_POST['soal_jwb2'];
            }else if($_POST['soal_jawaban']=="soal_jwb3"){
                $soal_jawaban=$_POST['soal_jwb3'];
            }else if($_POST['soal_jawaban']=="soal_jwb4"){
                $soal_jawaban=$_POST['soal_jwb4'];
            }else if($_POST['soal_jawaban']=="soal_jwb5"){
                $soal_jawaban=$_POST['soal_jwb5'];
            }
            $data = array(
                'soal_pelajaran' => $soal_pelajaran,
                'soal_deskripsi' => $soal_deskripsi,
                'soal_jwb1' => $soal_jwb1,
                'soal_jwb2' => $soal_jwb2,
                'soal_jwb3' => $soal_jwb3,
                'soal_jwb4' => $soal_jwb4,
                'soal_jwb5' => $soal_jwb5,
                'soal_jawaban' => $soal_jawaban,
            );
            $this->db->insert('soal', $data);
        }
		return $this->db->get('soal')->result();
	}
}
