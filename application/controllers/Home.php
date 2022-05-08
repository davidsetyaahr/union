<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$html = array(
			'metaKey' => "Java Volcano Tour Operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Java Volcano Tour Operator - Be a Traveler Not a Tourist'
		);

		$data['region'] = $this->common->getData("*",["region",4,0],"","","");

		$data['activeStyle'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url,cp.category",["packages p",4,0],["package_styles ps","p.id_package = ps.id_package","durations d", "p.id_duration = d.id_duration","category_package cp","p.id_category = cp.id_category"],["ps.id_style" => "1"],["p.id_package","desc"]);

		$data['styles'] = $this->common->getData("*","tour_styles","","","");

		$data['region'] = $this->common->getData("*","region","","","");

		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/home', $data);
		$this->load->view('frontend/common/bottom');
	}
}
