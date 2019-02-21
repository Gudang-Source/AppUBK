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
	public function __construct(){
		parent::__construct();
		$this->load->library('pagination');
		$this->load->model('Model'); // Load model ke controller ini
	}

	public function index()
	{
		// $this->load->view('welcome_message');
		$this->pages('module/home/home');
	}
	
	public function siswa() {
		$data["siswa"] = $this->Model->siswa();
		$this->pages('module/home/home', $data);
		// $this->pages('module/home/home');
	}
	
	public function soal()
	{
		// $this->pages('module/home/home', $data);
		$this->pages('module/soal/soal');
	}
	public function login()
	{
		// $this->pages('module/home/home', $data);
		$this->pages('module/login/login');
	}
}
