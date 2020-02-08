<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$html = array(
			'metaKey' => "union tour operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Union Tour Operator - Be a Traveler Not a Tourist'
		);

		$data['region'] = $this->common->getData("*","region","","","");

		$data['packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url",["packages p",3,0],["durations d", "p.id_duration = d.id_duration"],"",["p.id_package","desc"]);

		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/home', $data);
		$this->load->view('frontend/common/bottom');
	}
}
