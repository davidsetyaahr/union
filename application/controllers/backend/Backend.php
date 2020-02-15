<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    class Backend extends CI_Controller {
    //=====
        public function __construct() {
            parent::__construct();
            $this->load->model('BackendModel');
        }
    //=====
        
        public function loginAction() {
            htmlspecialchars($email = $this->input->post('email'));
            $password = $this->input->post('password');

            $where = array(
                'email' => $email,
                'password' => md5($password)
            );

            $cekLogin = $this->BackendModel->getWhere('users', $where)->num_rows();

            if($cekLogin > 0 && $cekLogin < 2) {

                $dataUser = $this->BackendModel->getWhere('users', $where)->result_array();

                $dataSession = array(
                    'email' => $email,
                    'user_id' => $dataUser[0]['user_id'],
                    'fullname' => $dataUser[0]['fullname'],
                    'levelUser' => $dataUser[0]['levelUser']
                );

                if($dataUser[0]['statusAktif'] == '1') {

                    $this->BackendModel->updateLastLogin($dataUser[0]['user_id']);

                    $this->session->set_userdata($dataSession);

                    $this->session->set_flashdata('alert_sukses', 'Successfully login as '. 
                        $dataUser[0]['fullname'].'.');

                    // print_r($this->session->userdata());
                    if ($dataUser[0]['levelUser'] == '1') {
                        redirect(base_url('dashboard'));
                    }else{
                        redirect(base_url());
                    }

                } else {
                    $this->session->set_flashdata('alert_warning', 'Username is deactivated. Please contact our technical support.');
                    redirect(base_url().'Login/');
                }
 
            } else {

                $this->session->set_flashdata('alert_gagal', 'Wrong username or password.');
                redirect(base_url().'Login/');

            }
        }

        public function dashboard() {
            if($this->session->userdata('levelUser')=='1'){
            
                $top = array(
                    'title' => 'Dashboard',
                );
                $this->load->view('backend/common/top',$top);
                $this->load->view('backend/dashboard/index');
                $this->load->view('backend/common/bottom');
            }else{
                $this->session->set_flashdata('error_akses', 'Anda tidak memiliki hak akses');
                redirect(base_url(''));
            }

        }

        public function logout() {

            $this->session->sess_destroy();
            redirect(base_url());

        }
}