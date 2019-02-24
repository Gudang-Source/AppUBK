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
		if($this->session->userdata('status') != "success"){
			redirect(base_url("./login"));
		}
	}

	public function index() {
		$where = array(
			'id_siswa' => $this->session->userdata('id_siswa'),
		);
		$data["siswa"] = $this->Model->siswa("siswa",$where)->row();
		$ada_ujian = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->num_rows();
		if($ada_ujian > 0 ){
			$data['ujian'] = $this->Model->ada_ujian($this->session->userdata('id_kelas'))->row();
		}else{
			redirect(base_url("welcome/login"));
		}
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
		$config['full_tag_open']   = "";
		$config['full_tag_close']  = "";
		$config['last_tag_open']    = "";
		$config['last_tag_close']   = "";
		$config['cur_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['cur_tag_close']   = "</div>";
		$config['num_tag_open']    = "<div style='margin-bottom:30px;padding:2px;color: rgb(0, 0, 0); width:25%;'>";
		$config['num_tag_close']   = "</div>";
		$this->pagination->initialize($config);
		$array=[];
		$siswa = $this->session->userdata('id_siswa');
		$kelas = $this->Model->kelas('kelas',array('id_kelas' => $this->session->userdata('id_kelas')));
		$random= $this->Model->random()->result();
		$data['jum_soal']=$this->Model->random()->num_rows();
		$cek_record=$this->Model->cek_record($siswa)->num_rows();
		if($cek_record < 1 ){
			foreach($random as $datas){
				array_push($array,$datas->soal_id);
			}
			$arrays= join(',',$array);
			$this->db->query("INSERT INTO record (id_siswa,id_pelajaran,id_soal) VALUES ('$siswa','$kelas->id_kelas','$arrays')");
		}
		$data["soal"] = $this->Model->soal($config,$siswa);
		$data["soalSemua"] = $this->Model->soal('select',$siswa);
		$data['url']=$this->uri->segment('3');
		$this->pages('module/soal/soal', $data);
	}
	public function login()
	{

		// $this->pages('module/home/home', $data);
		$this->pages('module/login/login');
	}
}
