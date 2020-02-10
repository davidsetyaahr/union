        <?php 
          foreach ($package as $data) {
              $images = explode(",", $data['images']);
              $getRegion = $this->common->getData("r.region_name","package_region pr",["region r","pr.id_region = r.id_region"],["pr.id_package" => $data['id_package']],"");
              $countRegion = count($getRegion);
              ?>
            <div class="col-md-3 col-6 cc fadeIn animated">
            <div class="package">
            <div class="info-top">
              <img src="<?php echo base_url()."assets/images/packages/".$images[0] ?>" alt="" />
              <div class="category">Category</div>
              <div class="top">
                <div class="info">
                  <?php 
                    echo $data['day']." Days ".$data['night']." Nights"
                    ?>
                </div>
              </div>
              <div class="layer"></div>
            </div>
            <div class="info-bottom">
            <div class="name"><?php echo $data['package_name'] ?></div>
              <div class="region">
              <?php 
                foreach ($getRegion as $key => $value) {
                    $glue = $key!=($countRegion-1) ? " - " : "";
                    echo $value['region_name'].$glue;
                }
                $coutnDest = $this->common->getData("count(pd.id_destination) ttl","package_destinations pd",["destinations d","pd.id_destination = d.id_destination"],["pd.id_package" => $data['id_package']],"");
                ?>
              </div>
              <div class="bottom">
                <div class="left">
                  <?php echo $coutnDest[0]['ttl'] ?> Destinations
                </div>
                <div class="right">
                  <a href="<?php echo base_url()."packages/".$data['url'] ?>" class="btn btn-primary btn-sm">View Detail</a>
                </div>
              </div>
            </div>
          </div>
          </div>
      <?php } ?>