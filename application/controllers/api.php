/**
 * Sandbox api for user table
 *
 * HTTP RESTful methodsd
 *
 * GET, PUT, POST, DELETE
 */

 <?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH.'/libraries/REST_Controller.php';

class Api extends REST_Controller {
	function __construct() {
		parent::__construct();
	}
	/**
	 * Default index view
	 *
	 */
	function index(){
		$this->load->view('rest_server');
	}

	/**
	 * Get all users in JSON
	 *
	 */
	function all_users_get(){
		// load db model
		$this->load->model('Model_users');

		// load user form model
		$users = $this->Model_users->get_all();

		// return results
		$this->response($users);
	}

	/**
	 * Get single user based on uri id
	 *
	 * @var id
	 */
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

	/**
	 * Update a user based on string in url. Must pass variables in the body
	 *
	 * @var email
	 * @var password
	 */
	function user_put(){
		$this->load->library('form_validation');
		$this->form_validation->set_data($this->put());

		if ($this->form_validation->run('user_put') != false) {
			$this->load->model('Model_users');
			$user = $this->put();
			$user_id = $this->Model_users->insert($user);
			if (!$user_id) {
				$this->response(array('status' => 'failure', 'message' => 'Unexpected error when creating a user'), REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
			}
			else {
				$this->response(array('status' => 'success', 'message' => 'User created'));
			}
		}
		else {
			$this->response( array('status' => 'failure', 'message' => $this->form_validation->get_errors_as_array()), REST_Controller::HTTP_BAD_REQUEST);
		}
	}

	/**
	 * Delete user based on id.
	 *
	 * @var id
	 */
	function user_delete(){
		//load id from third uri segment
		$id = $this->uri->segment(3);

		// load db model
		$this->load->model('Model_users');

		// load user form model
		$user = $this->Model_users->get_by(array('ID' => $id, 'status' => 1));

		// return results
		if (isset($user['ID']))
		{
			$user = $this->Model_users->delete_by(array('ID' => $id));
			$this->response(array('status' => 'success', 'message' => "user deleted"));
		}
		else 
		{
			$this->response(array('status' => 'failure', 'message' => 'This specified student could not be found'), REST_Controller::HTTP_NOT_FOUND);
		}
	}

	/**
	 * Sample hard-coded students array
	 *
	 * @var id
	 */
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