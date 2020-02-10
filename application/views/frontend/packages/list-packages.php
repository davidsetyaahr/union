<div class="half-banner" style="background : url('<?php echo base_url()."assets/images/banner/banner.jpg" ?>');background-position:bottom !important">
<div class="layer"></div>
<div class="container text-banner">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <h1 class="text-center font-weight-bold">TOUR PACKAGES</h1>
            <h5 class="text-center">Indonesia</h5>
            <div class="tour-finder px-4 py-3 mt-3">
                <p class="color-blue bold mb-3"><span class="fa fa-search"></span> Tour finder</p>
                <div class="row">
                  <div class="col-md-6 cc">
                    <select name="" id="" class="custom-select">
                      <option value="" data-icon="fa fa-globe" readonly>Destinations
                      </option>
                    </select>
                  </div>
                  <div class="col-md-4 cc">
                    <select name="" id="" class="custom-select">
                      <option value="" data-icon="fa fa-briefcase" readonly>Tour Style
                      </option>
                    </select>
                  </div>
                  <div class="col-md-2 cc">
                    <button style="height:100%" class="btn btn-block btn-primary py-2"><span class="fa fa-search"></span></button>
                  </div>
              </div>
                </div>
            
        </div>
    </div>
</div>
</div>
<div class="bg-light">
<div class="container custom my-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="title">Overview</div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-9 text-center">
          <div class="content">
            For the trips we have designed all through field operator research,
            we try to fulfill all the wishes of clients from all walks of life
            and we convey experiences like local people with international
            service.
          </div>
        </div>
      </div>
</div>
</div>
<div class="container custom my-5">
    <div class="row my-5 packages h-270">
    <?php 
              $loop = array(
                "package" => $packages,
              );
              $this->load->view("frontend/packages/loop-package", $loop);
            ?>
    </div>
</div>