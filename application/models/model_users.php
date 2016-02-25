<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_users extends MY_Model {

	protected $_table = 'users';
	protected $primary_key = '$ID';
	protected $return_type = 'array';

	protected $after_get = array('remove_sensitive_data');

	// remove information from get
	protected function remove_sensitive_data($user) {
		unset($user['points']);
		unset($user['default_cat']);
		return $user;
	}
}