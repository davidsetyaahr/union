<div class="half-banner" style="background : url('<?php echo base_url()."assets/images/banner/banner.jpg" ?>');background-position:bottom !important">
<div class="layer"></div>
<div class="container text-banner">
    <div class="row justify-content-center">
        <div class="col-md-8 text-center">
            <h1 class="font-weight-bold">TOUR PACKAGES</h1>
            <h5>Indonesia</h5>
            <div class="input-group form-filter mt-4">
                <input type="text" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                <div class="dropdown">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
  Tour Style
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Link 1</a>
    <a class="dropdown-item" href="#">Link 2</a>
    <a class="dropdown-item" href="#">Link 3</a>
  </div>
</div>                
                   <button type="button" class="btn btn-primary">
                        <i class="fa fa-search"></i> Find Packages
                    </button>
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
          foreach ($packages as $data) {
            $images = explode(",", $data['images']);
            $getRegion = $this->common->getData("r.region_name","package_region pr",["region r","pr.id_region = r.id_region"],["pr.id_package" => $data['id_package']],"");
            $countRegion = count($getRegion);
        ?>
        <div class="col-md-4 cc">
          <div class="package">
            <div class="info-top">
              <img src="<?php echo base_url()."assets/images/packages/".$images[0] ?>" alt="" />
              <div class="top">
                <div class="info">
                  <?php 
                    echo $data['day']." Days ".$data['night']." Nights"
                  ?>
                </div>
              </div>
              <div class="bottom">
                <div class="name">
                  <?php 
                    echo $data['package_name']
                  ?>
                </div>
              </div>
              <div class="layer"></div>
            </div>
            <div class="info-bottom">
              <p>Region or Destination  : </p>
              <div class="region">
              <?php 
                foreach ($getRegion as $key => $value) {
                  $glue = $key!=($countRegion-1) ? " - " : "";
                  echo $value['region_name'].$glue;
                }
              ?>
              </div>
              <div class="book">
                <a href="<?php echo base_url()."packages/".$data['url'] ?>" class="btn btn-primary">View Detail</a>
              </div>
            </div>
          </div>
        </div>
      <?php } ?>
      </div>

</div>