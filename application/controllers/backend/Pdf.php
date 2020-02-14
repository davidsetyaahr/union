<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pdf extends CI_Controller {
    
    public function __construct() {
            parent::__construct();
            $this->load->model('common');
    }
    public function index(){

        $top = array(
            'title' => 'Link PDF',
            'navdashboard' => 'active',
            'navpemesanan' => '',
            'navschedule' => '',
        );
        $data['pdf'] = $this->common->getData("*","pdf","","",["id_pdf","desc"]);
        
        $this->load->view('backend/common/top',$top);
        $this->load->view('backend/pdf/list-pdf', $data);
        $this->load->view('backend/common/bottom');
        
    }
    public function add(){
        
        $top = array(
            'title' => 'Link PDF',
            'navdashboard' => 'active',
            'navpemesanan' => '',
            'navschedule' => '',
        );
        $this->load->view('backend/common/top',$top);
        $this->load->view('backend/pdf/add-pdf');
        $this->load->view('backend/common/bottom');
        
    }
    public function insert()
    {
        $this->common->insert("pdf",$_POST);
        redirect(base_url()."pdf");
    }
    public function delete($id)
    {
        $this->common->delete("pdf",["id_pdf" => $id]);
        redirect(base_url()."pdf");
    }
    
    public function sendwa()
    {
        $url = base_url()."pdf/view/".$_POST['id_pdf'];
        redirect("https://web.whatsapp.com/send?phone=$_POST[phone]&text=$url");
    }
    
    public function view($id)
    {
        $data['pdf'] = $this->common->getData("*","pdf","","",["id_pdf" => $id])[0];
        $this->load->view('backend/pdf/view-pdf', $data);
    }
    
}
