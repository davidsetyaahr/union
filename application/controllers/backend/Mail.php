<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mail extends CI_Controller {
    //=====
    public function __construct() {
        parent::__construct();
        date_default_timezone_set("Asia/Jakarta");
    }
    //=====
	public function travelenquiry()
	{
        // Secret Key ini kita ambil dari halaman Google reCaptcha
        // Sesuai pada catatan saya di STEP 1 nomor 6
        $secret_key = "6Ld5yNgUAAAAALsghHr1uFA52UTWk_ugWa8cKvIq";
        // Disini kita akan melakukan komunkasi dengan google recpatcha
        // dengan mengirimkan scret key dan hasil dari response recaptcha nya
        $verify = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret_key.'&response='.$_POST['g-recaptcha-response']);
                $response = json_decode($verify);

        if($response->success){
                    $config = array(
                'protocol' => 'smtp', // 'mail', 'sendmail', or 'smtp'
                'smtp_host' => 'mail.uniontouroperator.com', 
                'smtp_port' => '465',
                'smtp_user' => 'admin@uniontouroperator.com',
                'smtp_pass' => 'bismillahsukses',
                'smtp_crypto' => 'ssl', //can be 'ssl' or 'tls' for example
                'mailtype' => 'html', //plaintext 'text' mails or 'html'
                'smtp_timeout' => '7', //in seconds
                'charset' => 'iso-8859-1',
                'wordwrap' => TRUE,
                'newline' => '\r\n'
            );

            $this->load->library('email');

            $this->email->initialize($config);


            $from = $config['smtp_user'];
            $to = "davidsetya24@gmail.com";
            $subject = "Booking Info";

            $package = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.images,p.url",["packages p"],["durations d", "p.id_duration = d.id_duration"],["p.id_package" => $_POST['packages']],"")[0];

            $message = "
            <html>
            <head>
                <title>Booking Information</title>
            </head>
            <body>
                <div style='background:#f9f9ff'>
                    <br>
                    <center>
                        <img src='".base_url()."assets/images/common/logoq.png'>
                        <h1>Booking Information</h1>
                    </center>
                    <br>
                </div>
                <br>
                <table width='100%'>
                    <tr width='100%'>
                        <td width='100%'>
                            <span>
                                <b>From : </b>".$_POST['email']."
                            </span>
                            <br>
                            <span>
                                <b>Booking date : </b>".date('d-m-Y H:i:s')."
                            </span>
                        </td>
                    </tr>
                </table>
                <br>
                <p><b>Detail information:</b></p>
                <table width='100%' border='1' cellspacing='0'>
                    <tr>
                        <td width='50%' colspan='2'>
                            <table width='100%'>
                                <tr>
                                    <td><b>Email</b></td>
                                    <td>:</td>
                                    <td>".$_POST['email']."</td>
                                </tr>
                                <tr>
                                    <td><b>Fullname</b></td>
                                    <td>:</td>
                                    <td>".$_POST['fullname']."</td>
                                </tr>
                                <tr>
                                    <td><b>Country</b></td>
                                    <td>:</td>
                                    <td>".$_POST['country']."</td>
                                </tr>
                                <tr>
                                    <td><b>Contact Number</b></td>
                                    <td>:</td>
                                    <td>".$_POST['contact']."</td>
                                </tr>
                            </table>                    
                        </td>
                        <td width='50%' colspan='2'>
                            <table width='100%'>
                                <tr>
                                    <td><b>Package Name</b></td>
                                    <td>:</td>
                                    <td>".$package['package_name']."</td>
                                </tr>
                                <tr>
                                    <td><b>Travel Date</b></td>
                                    <td>:</td>
                                    <td>".$_POST['date']."</td>
                                </tr>
                                <tr>
                                    <td><b>Adults</b></td>
                                    <td>:</td>
                                    <td>".$_POST['adults']."</td>
                                </tr>
                                <tr>
                                    <td><b>Children</b></td>
                                    <td>:</td>
                                    <td>".$_POST['children']."</td>
                                </tr>
                            </table>          
                        </td>
                    </tr>
                    <tr>
                        <td colspan='4'>
                            <center>
                                <b>T-shirt Size</b>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td width='25%'>
                            <center>
                                <b>Size S</b>
                                <br>
                                ".$_POST['s']."
                            </center>
                        </td>
                        <td width='25%'>
                            <center>
                                <b>Size M</b>
                                <br>
                                ".$_POST['m']."
                            </center>
                        </td>
                        <td width='25%'>
                            <center>
                                <b>Size L</b>
                                <br>
                                ".$_POST['l']."
                            </center>
                        </td>
                        <td width='25%'>
                            <center>
                                <b>Size XL</b>
                                <br>
                                ".$_POST['xl']."
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='4'>
                            <center>
                                <b>Itinerary plans or ideas</b>
                                <br>
                                ".$_POST['plans']."
                            </center>
                        </td>
                    </tr>
                </table>
            </body>
            </html>

            ";
             $this->email->set_newline("\r\n");
            $this->email->from($from,'Union Tour Operator');
            $this->email->to($to);
            $this->email->subject($subject);
            $this->email->message($message);

            if ($this->email->send()) {
                redirect(base_url()."success");
            } else {
                show_error($this->email->print_debugger());
            }            
            }else{

        }

    }
    
}