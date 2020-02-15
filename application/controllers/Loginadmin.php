<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Loginadmin extends CI_Controller {
        //=====
        public function __construct() {
            parent::__construct();
        }
        //=====
        public function index() {
            if(isset($_SESSION['user_id'])) {
                redirect(base_url()."dashboard");
            } else {
                $this->load->view('backend/login/login');
            }
        }
        
        //=====
    } 