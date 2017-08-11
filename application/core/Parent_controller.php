<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parent_controller extends CI_Controller {

		public function __construct(){
			  parent::__construct();
				$this->data['judul'] = 'Program xxxx';

				/*
				session list - role access
				1.superadmin = all menu, all master
				2.ppic = request goods and view status
				3.adminproduksi = using goods and result goods
				4.purchasing = request goods for payment status
				5.supervisor = report using and result goods
				*/
		}



}
