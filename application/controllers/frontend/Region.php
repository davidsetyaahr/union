<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Region extends CI_Controller {

	public function view($url="")
	{
		$data['region'] = $this->common->getData("*","region","",["url" => $url],"")[0];
		$html = array(
			'metaKey' => "Java Volcano Tour Operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Java Volcano Tour Operator - Be a Traveler Not a Tourist',
		);
		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/region/view-region', $data);
		$this->load->view('frontend/common/bottom');
	}
}
