<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_m extends CI_Model {

  function __construct() {
    parent::__construct();
    $this->load->database();
  }

  function user_validate($email, $password) {
    $result = $this->db->select('user_id,password,created')
    ->from('users')
    ->where('email', $email)
    ->get();

    if ($result->num_rows() == 1) {
      $result_p = $result->result_array();
      $hash = $password . $result_p[0]['created'];
      $password_result = $this->db->select()
      ->from('users')
      ->where('email', $email)
      ->where('password', hash('sha256',$hash))
      ->get();

      if ($password_result->num_rows() == 1) {
        show_error('Validation done', 500);
      }
      else {
        show_error('Login credentials are wrong', 500);
      }
    }
    else {
      show_error('Email entered is wrong', 500);
    }
  }
}