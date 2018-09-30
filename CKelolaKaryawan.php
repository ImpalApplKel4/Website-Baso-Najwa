<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {

	function __construct(){
		parent::__construct();		
		$this->load->model('KaryawanModel');		 
	}

	public function index()
	{
		$Karyawan = $this->KaryawanModel->getDataKaryawan();
		$data = array(			
			'Karyawan' => $Karyawan					
		);
		$this->load->view('header');
		$this->load->view('Karyawan',$data);
		$this->load->view('footer');
	}

	public function detailKaryawan($id)
	{
		$Karyawan = $this->KaryawanModel->getDetailKaryawan($id);
		$data = array(			
			'Karyawan' => $Karyawan					
		);
		$this->load->view('header');
		$this->load->view('detailKaryawan',$data);
		$this->load->view('footer');
	}
}