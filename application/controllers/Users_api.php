<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Users_api extends REST_Controller {
	function __construct() {
		parent::__construct();
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