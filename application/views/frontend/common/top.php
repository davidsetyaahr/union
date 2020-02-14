<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <?php 
        if(isset($metaKey)){
    ?>
        <meta name="keywords" content="<?php echo $metaKey ?>">
    <?php
        }
        if(isset($metaDesc)){
    ?>
    <meta name="description" content="<?php echo $metaKey ?>">
    <?php } ?> 
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/bootstrap.min.css" />
    <link
      rel="stylesheet"
      href="<?php echo base_url() ?>assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/fonts/adventure/font/flaticon.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/animated.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/js/select2-develop/dist/css/select2.min.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/custom.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/custom-responsive.css" />
    <title><?php echo $title; ?></title>
  </head>
  <body>
  <div class="loading fadeIn animated">
      <img src="<?php echo base_url()."assets/images/common/UNION.png" ?>" alt="">
  </div>
    <nav class="navbar navbar-expand-lg py-3 main-nav fixed-top">
      <div class="container custom">
        <a class="navbar-brand" href="#">
          <img id="logo1" src="<?php echo base_url() ?>assets/images/common/logo-white.png" alt="">
          <img id="logo2" class="hidden" src="<?php echo base_url() ?>assets/images/common/logo.png" alt="">
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
        <span class="fa fa-bars"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="<?php echo base_url() ?>"
                >Home <span class="sr-only">(current)</span></a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
      <!-- Megamenu-->
<!--       <li class="nav-item dropdown megamenu"><a id="megamneu" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">destinations</a>
        <div aria-labelledby="megamneu" class="dropdown-menu border-0 p-0 m-0">
          <div class="container">
            <div class="row bg-white rounded-0 m-0 shadow-sm box-mega">
              <div class="col-lg-7 col-xl-8">
                <div class="p-3">
                  <div class="row destinations top center">
                    <div class="col-md-12 cc mb-2 font-weight-bold">
                      <h5>Choose Region :</h5>
                    </div>
                  <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/1.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destinationasasassssss
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/2.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/3.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/4.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/5.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/1.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/1.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
        <div class="col-md-3 col-6 mb-3 cc">
          <div class="destination">
            <img
              src="<?php echo base_url() ?>assets/images/destinations/1.jpg"
              class="img-dest"
              alt=""
            />
            <div class="layer">
                </div>
                <div class="text">
                Destination
                </div>
          </div>
        </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-5 col-xl-4 px-0 d-none d-lg-block bg-mega">
                <div class="layer"></div>
                <img src="<?php echo base_url()."assets/images/common/logo-white.png" ?>" alt="">
              </div>
            </div>
          </div>
        </div>
      </li>
 -->            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url()."packages" ?>">All Packages</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url()."packages?id_style=1"; ?>">Active Travel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url()."packages?id_style=2"; ?>">Classic Journey</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo base_url()."packages?id_style=3"; ?>">Trekking</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn btn-warning color-white" data-toggle="modal" data-target="#myModal" href="#"><span class="fa fa-send"></span> Enquire</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="modal" id="myModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h5 class="modal-title">New Travel Enquiry</h5>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form action="<?php echo base_url()."backend/mail/travelenquiry"?>" method="post">
        <div class="row">
          <div class="col-lg-4">
            <label for="">Email</label>
            <input type="email" name="email" class="form-control">
          </div>
          <div class="col-lg-4">
            <label for="">Your Name</label>
            <input type="text" name="fullname" class="form-control">
          </div>
          <div class="col-lg-4">
            <label for="">Country</label>
            <input type="text" name="country" class="form-control">
          </div>
        </div>
        <div class="row mt-3">
          <div class="col-lg-4">
            <label for="">Estimated Travel Date</label>
            <input type="date" name="date" class="form-control datepicker">
          </div>
          <div class="col-lg-2">
            <label for="">Adults</label>
            <input type="number" name="adults" class="form-control">
          </div>
          <div class="col-lg-2">
            <label for="">Children</label>
            <input type="number" name="children" class="form-control">
          </div>
          <div class="col-lg-4">
            <label for="">Your Contact Number</label>
            <input type="text" name="contact" class="form-control">
          </div>
          <div class="col-lg-12 my-3 normal">
            <label for="">Tour Package</label>
            <select name="packages" id="selectPackage" class="custom-select select2">
                <option value="" data-url="" readonly>---Select Package---</option>
              <?php 
                  $enquirePackages = $this->common->getData("p.id_package,p.package_name,d.day,d.night,p.url","packages p",["durations d", "p.id_duration = d.id_duration"],"",["d.day","asc"]);

                  foreach ($enquirePackages as $key => $value) {
                    echo "<option data-url='".base_url()."packages/$value[url]' value='".$value['id_package']."'>$value[day]D $value[night]N - $value[package_name]</option>";
                  }
                  
              ?>
            </select>
            <br>
            <br>
            <a href="" id="viewPackage" target="_blank">View package</a>
          </div>
          <div class="col-lg-3">
            <label for="">Tshirt S</label>
            <input type="number" class="form-control" name="s">
          </div>
          <div class="col-lg-3">
            <label for="">Tshirt M</label>
            <input type="number" class="form-control" name="m">
          </div>
          <div class="col-lg-3">
            <label for="">Tshirt L</label>
            <input type="number" class="form-control" name="l">
          </div>
          <div class="col-lg-3">
            <label for="">Tshirt XL</label>
            <input type="number" class="form-control" name="xl">
          </div>
          <div class="col-lg-12 my-3">
            <label for="">Itinerary plans or ideas</label>
            <textarea name="plans" id="" class="form-control" rows="3	"></textarea>
            <br>
            <div class="g-recaptcha" data-sitekey="6Ld5yNgUAAAAAMMS26tlufJVt3flTKiXkjCBjpD7"></div> 
            <!-- secret key = 6Ld5yNgUAAAAALsghHr1uFA52UTWk_ugWa8cKvIq            -->
          </div>
          <div class="col-lg-12">
            <button class="btn btn-primary" type="submit">Submit</button>
            <button class="btn btn-default" type="reset">Reset</button>
          </div>
        </div>
      </form>
          </div>
    </div>
  </div>
</div>    

