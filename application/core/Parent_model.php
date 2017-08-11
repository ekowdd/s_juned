<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parent_model extends CI_Model{
 

public function __construct(){
	parent::__construct();

}

public function input_array($post_array){
		$data = array();

		foreach($post_array as $post){

				$data[$post] = $this->input->post($post);

		}

		return $data;
}

public function save($data,$id=NULL,$tablename){
	if($id == '' || empty($id) || $id==NULL){
		$this->db->set($data);
		$res = $this->db->insert($tablename);
	}else{
		$this->db->set($data);
  	$this->db->where('id',$data['id']);
		$res = $this->db->update($tablename);

	}

	return $res;
}

public function save_account($data,$id=NULL,$tablename){
	if($id == '' || empty($id) || $id==NULL){
		$this->db->set($data);
		$this->db->set('password',md5($data['password']));

		$res = $this->db->insert($tablename);
	}else{
		if($data['password'] == NULL || empty($data['password']) || $data['password'] == ''){
			  $this->db->set($data);
				$this->db->where('id',$data['id']);
				$res = $this->db->update($tablename);
		}else{
			$this->db->set($data);
			$this->db->set('password',md5($data['password']));
			$this->db->where('id',$data['id']);
			$res = $this->db->update($tablename);
		}

	}

	return $res;
}

public function get_all($id=NULL,$tablename){
	if($id == '' || empty($id) || $id==NULL){
		$res = $this->db->get($tablename);
	}else{
		$this->db->where('id',$id);
		$res = $this->db->get($tablename);
	}
	return $res;
}

public function delete($id,$tablename){
	$this->db->where('id',$id);
	return $this->db->delete($tablename);
}
}
