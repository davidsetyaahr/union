<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Packages extends CI_Controller {

	public function index()
	{
		$html = array(
			'metaKey' => "union tour operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Union Tour Operator - Be a Traveler Not a Tourist'
		);

		if(!empty($_GET['id_region'])){
			$id_region = $_GET['id_region'];

			$data['packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url","packages p",["durations d", "p.id_duration = d.id_duration","package_region pr","p.id_package = pr.id_package"],["pr.id_region" => $id_region],["p.id_package","desc"]);
		}elseif(!empty($_GET['id_style'])){
			$id_style = $_GET['id_style'];

			$data['packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url","packages p",["package_styles ps","p.id_package = ps.id_package","durations d", "p.id_duration = d.id_duration"],["ps.id_style" => $id_style],["p.id_package","desc"]);
		}elseif(!empty($_GET['id_region']) && !empty($_GET['id_style'])){
			$id_region = $_GET['id_region'];
			$id_style = $_GET['id_style'];

			$data['packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url","packages p",["package_styles ps","p.id_package = ps.id_package","durations d", "p.id_duration = d.id_duration","package_region pr","p.id_package = pr.id_package"],["ps.id_style" => $id_style,"pr.id_region" => $id_region],["p.id_package","desc"]);
		}else{
			$data['packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url","packages p",["durations d", "p.id_duration = d.id_duration"],"",["p.id_package","desc"]);
		}
		$data['styles'] = $this->common->getData("*","tour_styles","","","");

		$data['region'] = $this->common->getData("*","region","","","");
		
		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/packages/list-packages', $data);
		$this->load->view('frontend/common/bottom');
	}
	public function detail($url="")
	{
		$html = array(
			'metaKey' => "union tour operator, union, java volcano tour operator, jvto, indonesian travel, wonderfull indonesia",
			'metaDesc' => "We're a group of talented, passionate people located around the world. Not afraid to innovate or try new things, we're committed to making things better for everyone by tackling the difficult problems of travel.",
			'title' => 'Union Tour Operator - Be a Traveler Not a Tourist'
		);
		
		$data['package'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.overview,p.informations","packages p",["durations d", "p.id_duration = d.id_duration"],["p.url" => $url],"")[0];
		
		$data['styles'] = $this->common->getData("ts.style_name","package_styles ps",["tour_styles ts","ps.id_style = ts.id_style"],["id_package" => $data['package']['id_package']],"");

		$data['getRegion'] = $this->common->getData("r.region_name","package_region pr",["region r","pr.id_region = r.id_region"],["pr.id_package" => $data['package']['id_package']],"");            

		$data['destinations'] = $this->common->getData("d.destination_name","package_destinations pd",["destinations d","pd.id_destination = d.id_destination"],["pd.id_package" => $data['package']['id_package']],"");

		$data['itinerary'] = $this->common->getData("*","itinerary","",["id_package" => $data['package']['id_package']],"");

		$data['highlights'] = $this->common->getData("*","trip_highlights","",["id_package" => $data['package']['id_package']],"");

		$data['another_packages'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url",["packages p",3,0],["durations d", "p.id_duration = d.id_duration"],"",["p.id_package","desc"]);


		$data['info'] = array(
			"include" => $this->common->getData("i.text","package_info pi",["info i","pi.id_info = i.id_info"],["pi.id_package" => $data['package']['id_package'],"i.type" => "in"],""),
			"exclude" => $this->common->getData("i.text","package_info pi",["info i","pi.id_info = i.id_info"],["pi.id_package" => $data['package']['id_package'],"i.type" => "ex"],""),
		);
		
		$this->load->view('frontend/common/top', $html);
		$this->load->view('frontend/packages/detail-package', $data);
		$this->load->view('frontend/common/bottom');
	}
	
	public function bystyle()
	{
		$data['package'] = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url",["packages p",4,0],["package_styles ps","p.id_package = ps.id_package","durations d", "p.id_duration = d.id_duration"],["ps.id_style" => $_POST['id_style']],["p.id_package","desc"]);
		
		$data['styles'] = $this->common->getData("*","tour_styles","","","");
		
		$this->load->view('frontend/packages/loop-package', $data);
	}

}
