<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Api extends REST_Controller {
	function __construct() {
		parent::__construct();
	}

	function index(){
		$this->load->view('rest_server');
	}

	function all_users_get(){
		// load db model
		$this->load->model('Model_users');

		// load user form model
		$users = $this->Model_users->get_all();

		// return results
		$this->response($users);
	}

	function user_get(){
		//load id from third uri segment
		$id = $this->uri->segment(3);
		
		// load db model
		$this->load->model('Model_users');

		// load user form model
		$user = $this->Model_users->get_by(array('ID' => $id, 'status' => 1));
		
		// return results
		if (isset($user['ID']))
		{
			$this->response(array('status' => 'success', 'message' => $user));
		}
		else 
		{
			$this->response(array('status' => 'failure', 'message' => 'This specified student could not be found'), REST_Controller::HTTP_NOT_FOUND);
		}
	}

	function add_user_put(){
		//$this->load->library('form_validation');
		
	}

	/* Sample API w/ array implementation */
	function student_get(){

		$id = $this->uri->segment(3);

		$student = array(
			1 => array('first'=>'Jim', 'last_name'=>'Test'),
			2 => array('first'=>'Jane', 'last_name'=>'Doe')
		);

		if (isset($student[$id])) 
		{
			$this->response(array('status' => 'success', 'message' => $student[$id]));
		}
		else 
		{
			$this->response(array('status' => 'failure', 'message' => 'This specified student could not be found'), REST_Controller::HTTP_NOT_FOUND);
		}
		
	}
}