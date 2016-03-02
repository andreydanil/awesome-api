<?php if( ! defined('BASEPATH') ) exit('No direct script access allowed');


$config = array(

 'user_put' => array(
   array( 'field' => 'email', 'label' => 'email', 'rules' => 'trim|required|valid_email' ),
   array( 'field' => 'password', 'label' => 'password', 'rules' => 'trim|required|min_length[8]|max_length[16]' )
  )

);
?>﻿