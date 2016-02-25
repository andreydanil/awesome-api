<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Users extends CI_Controller {
	function __construct() {
		parent::__construct();
	}

	function login()
	{
		//$data = $this->users_get();
		$this->load->model('Model_users');
		$data = $this->Model_users->get_all();

		$some_data = $this->Model_users->get_all();
		$some_data = json_encode($some_data);
		$data = array (
		        'some_data' => $some_data
		);


		$this->load->view('login', $data);
	}

	function users_get()
    {
        // respond with information about several users
        $this->load->model('Model_users');
		$users = $this->Model_users->get_all();
		$this->response($users);
    }

	function user_get()
    {
        // respond with information about a user
        $data = array('returned: '. $this->get('id'));
        $this->response($data);
    }

    function user_put()
    {
        // create a new user and respond with a status/errors
        $data = array('returned: '. $this->put('id'));
        $this->response($data);
    }

    
    function user_post()
    {
        // update an existing user and respond with a status/errors
        $data = array('returned: '. $this->post('id'));
        $this->response($data);
    }
 
    function user_delete()
    {
        // delete a user and respond with a status/errors
        $data = array('returned: '. $this->delete('id'));
        $this->response($data);
    }
}

?>