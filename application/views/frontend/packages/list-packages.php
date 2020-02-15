<div class="half-banner list-package" style="background : url('<?php echo base_url()."assets/images/banner/package.jpg" ?>');background-position:center">
<div class="layer"></div>
<div class="container text-banner">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <h1 class="text-center font-weight-bold">TOUR PACKAGES</h1>
            <h5 class="text-center">Indonesia</h5>
            <div class="tour-finder px-4 py-3 mt-3">
                <p class="color-blue bold mb-3"><span class="fa fa-search"></span> Tour finder</p>
                <form action="<?php echo base_url()."packages"; ?>" method="GET">
                <div class="row">
                  <div class="col-md-6 cc">
                      <select name="id_region" id="" class="custom-select">
                        <option value="" data-icon="fa fa-map-marker" readonly>Destinations</option>
                        <?php 
                          foreach ($region as $key => $value) {
                            $selected = "";
                            if(isset($_GET['id_region'])){
                              $selected = $_GET['id_region']==$value['id_region'] ?  "selected" : "";
                            }
                        ?>
                        <option value="<?php echo $value['id_region'] ?>" <?php echo $selected ?>><?php echo $value['region_name'] ?></option>
                          <?php } ?>
                      </select>
                    </div>
                    <div class="col-md-4 cc">
                      <select name="id_style" id="" class="custom-select">
                        <option value="" data-icon="fa fa-globe" readonly>Tour Style</option>
                        <?php 
                          foreach ($styles as $key => $value) {
                            $selected = "";
                            if(isset($_GET['id_style'])){
                              $selected = $_GET['id_style']==$value['id_style'] ?  "selected" : "";
                            }
                        ?>
                        <option value="<?php echo $value['id_style'] ?>" <?php echo $selected ?>><?php echo $value['style_name'] ?></option>
                          <?php } ?>
                      </select>
                    </div>
                    <div class="col-md-2 cc">
                      <button type="submit" style="height:100%" class="btn btn-block btn-primary py-2">
                      <span class="fa fa-search"></span>
                      </button>
                    </div>
              </div>
              </form>
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
    <div class="row mb-3">
        <div class="col-md-6">
        <h5 class="bold ls-1 color-orange">
            <?php 
            if(empty($_GET['id_region']) && empty($_GET['id_style'])){
              echo "<span class='fa fa-map-marker color-blue'></span> All packages";
            }
              if(isset($_GET['id_region'])){
            ?>
            <span class="fa fa-map-marker color-blue"></span> <?php echo $selectRegion['region_name'] ?>
            <?php }
            if(isset($_GET['id_region']) && isset($_GET['id_style'])){
              echo "&nbsp;";
            } 
              if(isset($_GET['id_style'])){
            ?>
                <span class="fa fa-globe color-blue"></span> <?php echo $selectStyle['style_name'] ?>
            <?php
              }
              ?>
              </h5>
        </div>
        <div class="col-md-6 to-left text-right ml-auto">
              <h5 class="bold ls-1"><?php echo count($packages)." Packages" ?></h5>
        </div>
    </div>
    <div class="row mb-5 packages h-220">
    <?php 
              $loop = array(
                "package" => $packages,
              );
              $this->load->view("frontend/packages/loop-package", $loop);
            ?>
    </div>
</div>
