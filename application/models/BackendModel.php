<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BackendModel extends CI_Model {

	public function updateLastLogin($id) {
        $email = $this->input->post('email');

        $data = array(
            'lastLogin' => date('Y-m-d')
        );

        $this->db->where('user_id', $id);
        $this->db->update('users', $data);
    }

	public function getData($table)
	{
		return $this->db->get($table)->result();
	}

	public function getWhere($table, $where)
	{
		return $this->db->get_where($table, $where);
	}

	public function insert($table, $data)
	{
		$query = $this->db->insert($table, $data);
			if ($query){
		     return "success";
		    }
		    else{
		     $error = $this->db->error();
		     return $error['message'];
		    }
	}

	public function update($table, $where, $data)
	{
		$this->db->where($where);
		$query = $this->db->update($table, $data);
		if ($query){
	     return "success";
	    }
	    else{
	     $error = $this->db->error();
		 return $error['message'];
	    }
	}

	function getAll(){
        $query=$this->db->query("SELECT tb_order.kode, tb_order.date, users.fullname, price_per_pax.price, tours.title, tb_order.numb_pax, tb_order.status  FROM tb_order,users,price_per_pax,tours WHERE users.user_id = tb_order.user_id AND tb_order.price_id = price_per_pax.price_id AND price_per_pax.tour_id = tours.tour_id AND (tb_order.status = 'decline' OR tb_order.status = 'pending') ORDER BY tb_order.status");
        return $query;
    }

    function getInv($kode){
        $query=$this->db->query("SELECT tb_order.kode, tb_order.date, users.fullname, price_per_pax.price, tours.title, tb_order.numb_pax, tb_order.status, driver.driver_name,hotel.hotel_name  FROM tb_order,users,price_per_pax,tours,driver,hotel WHERE users.user_id = tb_order.user_id AND tb_order.price_id = price_per_pax.price_id AND price_per_pax.tour_id = tours.tour_id AND hotel.hotel_id = tb_order.hotel_id AND driver.driver_id = tb_order.driver_id AND tb_order.status = 'approved' AND tb_order.kode = '$kode' ORDER BY tb_order.date");
        return $query;
	}
	
    function getSchedule(){
        $query=$this->db->query("SELECT tb_order.kode, tb_order.date, users.fullname, price_per_pax.price, tours.title, tb_order.numb_pax, tb_order.status, driver.driver_name,hotel.hotel_name  FROM tb_order,users,price_per_pax,tours,driver,hotel WHERE users.user_id = tb_order.user_id AND tb_order.price_id = price_per_pax.price_id AND price_per_pax.tour_id = tours.tour_id AND hotel.hotel_id = tb_order.hotel_id AND driver.driver_id = tb_order.driver_id AND tb_order.status = 'approved' ORDER BY tb_order.date");
        return $query;
    }

    function getDataApprove($kode){
        $query=$this->db->query("SELECT tb_order.kode, tb_order.date, users.fullname, price_per_pax.price, tours.title, tb_order.numb_pax, tb_order.status  FROM tb_order,users,price_per_pax,tours WHERE users.user_id = tb_order.user_id AND tb_order.price_id = price_per_pax.price_id AND price_per_pax.tour_id = tours.tour_id AND tb_order.kode = '".$kode."' ORDER BY tb_order.date");
        return $query;
    }
}

/* End of file Dosen_model */
/* Location: ./application/models/Dosen_model */