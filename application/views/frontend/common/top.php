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
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/custom.css" />
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/custom-responsive.css" />
    <title><?php echo $title; ?></title>
  </head>
  <body>
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
      <li class="nav-item dropdown megamenu"><a id="megamneu" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">destinations</a>
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
            <li class="nav-item">
              <a class="nav-link" href="#">Adventure</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Hiking Tour</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Beach Tour</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sign in</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
