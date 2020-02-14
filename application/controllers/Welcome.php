<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
    //=====
    public function __construct() {
        parent::__construct();
    }
    //=====
	public function index()
	{
		$top['htmltitle'] = "JVTO | Java Volcano Tour Operator";
		$data['destinations'] = $this->mymodel->get(["destinations d",4], "c.cat_name, d.title, d.subtitle, d.banner, d.url", ["category c", "d.cat_id = c.cat_id"], ["d.status" => 1], ["dest_id","asc"], "");
		$data['tours'] = $this->mymodel->get(["tours t",4], "t.tour_id,t.img, t.title, t.url, dur.dur_name, c.cat_name, c.cat_id", ["durations dur", "dur.dur_id = t.dur_id", "cat_tours c", "c.cat_id = t.cat_id"],"", ["t.tour_id","desc"], "");
		$data['testi'] = $this->mymodel->get(["review",6],"fullname,photo,text,star","",["status" => "1"], ["review_id","desc"],"");
		$this->load->view('frontend/common/top', $top);
		$this->load->view('frontend/home',$data);
		$this->load->view('frontend/common/bottom');
	}
	public function success()
	{
		$this->load->view("frontend/common/success");
	}
}
