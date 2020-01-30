<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Destinations extends CI_Controller {

	public function detail($url="")
	{
		$html = array(
			'metaKey' => "union tour operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Union Tour Operator - Be a Traveler Not a Tourist'
		);
		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/destinations/detail-destination');
		$this->load->view('frontend/common/bottom');
	}
}
