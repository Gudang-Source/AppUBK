<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
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
	public function tambahSoal(){
		$soal_deskripsi = $this->input->post('soal_deskripsi');
		$soal_jwb1 = $this->input->post('soal_jwb1');
		$soal_jwb2 = $this->input->post('soal_jwb2');
		$soal_jwb3 = $this->input->post('soal_jwb3');
		$soal_jwb4 = $this->input->post('soal_jwb4');
		$soal_jwb5 = $this->input->post('soal_jwb5');
		$soal_jawaban = $this->input->post('soal_jawaban');

	}
}
