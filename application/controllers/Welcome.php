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

	public function index() {
		$data["siswa"] = $this->Model->siswa();
		$this->pages('module/home/home', $data);
	}
	
	public function soal() {
		//pagination
		$config['base_url']    = base_url()."welcome/soal/";
		$config['total_rows']  = $this->db->query("SELECT * FROM soal;")->num_rows();
		$config['per_page']    = 1;
		$config['num_links']   = 5;
		$config['uri_segment'] = 3;

		//styling
		$config['full_tag_open']   = "<nav aria-label='Page navigation example'><ul class='pagination pagination-sm justify-content-end'>";
		$config['full_tag_close']  = "</ul></nav>";
		$config['first_tag_open']  = "<li class='page-item'><span class='page-link'>";
		$config['first_tag_close'] = "</span></li>";
		$config['last_tag_open']   = "<li class='page-item'><span class='page-link'>";
		$config['last_tag_close']  = "</span></li>";
		$config['next_tag_open']   = "<li class='page-item'><span class='page-link'>";
		$config['next_tag_close']  = "</span></li>";
		$config['prev_tag_open']   = "<li class='page-item'><span class='page-link'>";
		$config['prev_tag_close']  = "</span></li>";
		$config['cur_tag_open']    = "<li class='page-item active'><span class='page-link'>";
		$config['cur_tag_close']   = "</span></li>";
		$config['num_tag_open']    = "<li class='page-item'><span class='page-link'>";
		$config['num_tag_close']   = "</span></li>";
		$config['first_link']	   = "First";
		$config['last_link']	   = "End";
		$config['next_link']	   = "Next";
		$config['prev_link']	   = "Previous";
		$this->pagination->initialize($config);

		$data["soal"] = $this->Model->soal($config);
		$this->pages('module/soal/soal', $data);
	}
	public function login()
	{
		// $this->pages('module/home/home', $data);
		$this->pages('module/login/login');
	}
}
