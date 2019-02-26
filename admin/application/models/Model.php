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
}
