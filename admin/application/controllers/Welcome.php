<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {
	// public function __construct(){
	// 	$this->load->helper(array('form','url'));
	// 	$this->load->library('upload');

	// }
	public function index()
	{
		// $this->load->view('welcome_message');
		$this->data['guru']=$this->Model->guru('guru');
		$this->pages('module/guru/guru', $this->data);
	}
	
	public function guru() {
		$this->data['guru']=$this->Model->guru('guru');
		$this->pages('module/guru/guru', $this->data);
	}
	
	public function kelas() {
		$this->pages('module/kelas/kelas');
	}
	public function soal() {  
		$this->pages('module/soal/soal');
	}
	public function perSoal($soal_pelajaran) {
		$data['perSoal'] = $this->Model->perSoal($soal_pelajaran);
		$this->pages('module/perSoal/perSoal', $data);
	}
	public function perSoalEdit($soal_id) {
		$data['perSoalEdit'] = $this->Model->perSoalEdit($soal_id);
		$this->pages('module/perSoal/perSoalEdit', $data);
	}
	public function tambahSoal(){
		$soal_deskripsi = $this->input->post('soal_deskripsi');
		$soal_jwb1 = $this->input->post('soal_jwb1');
		$soal_jwb2 = $this->input->post('soal_jwb2');
		$soal_jwb3 = $this->input->post('soal_jwb3');
		$soal_jwb4 = $this->input->post('soal_jwb4');
		$soal_jwb5 = $this->input->post('soal_jwb5');
		$soal_jawaban = $this->input->post('soal_jawaban');
	}
	public function ujian(){
		$data['ujian']= $this->Model->ujian();
		$this->pages('module/ujian/ujian',$data);
		// $this->pages('module/ujian/ujian');
	}
	function upload(){
		$config = array(
            'upload_path' 			=> './assets/unggah/',
            'allowed_types' 		=> "jpg|jpeg",
            'overwrite' 			=> TRUE,
			'encrypt_name'  		=> TRUE,
			'width'					=> '100px',
			'height'				=> '100px'
        );

        $this->load->library('upload', $config);
        $this->upload->do_upload('image');
        $data = array(
                'width'		=>$this->upload->data('image_width'),
                'height'	=>$this->upload->data('image_height'),
                'file_name'	=>$this->upload->data('file_name')
            );
		$link = base_url().'./assets/unggah/'.$data['file_name'];
        $res = array(
        		"data" => array(
                	'link' 	=> $link,
                	'width' => 100,
                	'height'=> 100
                )
		);
        echo json_encode($res);
	}
}
