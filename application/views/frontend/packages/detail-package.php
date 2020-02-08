<?php 
  $images = explode(",", $package['images']);

?>
<div class="full-banner detail" style="background : url('<?php echo base_url()."assets/images/packages/".$images[0] ?>');background-position:bottom !important">
    <div class="layer"></div>
    <div class="container text-banner">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
            <h1 class="font-weight-bold"><?php echo $package['package_name'] ?></h1>
            <h5 class="mb-3">
            </h5>
            <a href="" class="btn-bold btn-circle btn btn-primary scrollDown" data-target="#overview">View Detail <span class="fa fa-caret-down"></span> </a>
            </div>
        </div>
    </div>
    <div class="info-bottom">
        <div class="container custom">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-3 col-6">
                        <p class="color-yellow bold mb-1">
                            <span class="fa fa-clock-o fa-lg mb-2"></span>
                            <br>
                            <?php 
                              echo $package['day']." Days ".$package['night']." Nights";
                            ?>
                        </p>
                        <p class="color-white bold">
                          <?php 
                            $countRegion = count($getRegion);
                            foreach ($getRegion as $key => $value) {
                              $glue = $key!=($countRegion-1) ? " - " : "";
                              echo $value['region_name'].$glue;
                            }
                          ?>
                        </p>
                        </div>
                        <div class="col-md-3 ml-auto text-right col-6">
                        <p class="color-yellow bold mb-1">
                        <span class="fa fa-globe fa-lg mb-2"></span>
                        <br>
                        <?php 
                          $countStyles = count($styles);
                          foreach ($styles as $key => $value) {
                            $glue = $key!=($countStyles-1) ? " - " : "";
                            echo strtoupper($value['style_name'].$glue);
                          }
                        ?>
                        </p>
                        <p class="color-white bold">
                            <?php echo count($destinations) ?> Destinations
                        </p>
                        </div>
                    
                    </div>    
                </div>
            </div>
        </div>
    </div>
</div>
      <div class="container custom mb-5" id="overview">
        <div class="row justify-content-center">
          <div class="col-md-6">
            <div class="title mt-5">Overview</div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-9 text-center">
            <div class="content">
              <?php 
                echo $package['overview']
              ?>
            </div>
          </div>
        </div>
        <div class="row text-center justify-content-center mt-5">
        <div class="col-md-8">
        <p class="bold ls-1 color-blue mb-4">
          <?php 
            $countDest = count($destinations);
            foreach ($destinations as $key => $value) {
              $glue = $key!=($countDest-1) ? " - " : "";
              echo "<i>".$value['destination_name']."</i>".$glue;
            }
          ?>
            </p>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="row justify-content-center">
              <?php 
                foreach ($images as $value) {
              ?>
                <div class="col-md-4 cc col-4">
                    <img src="<?php echo base_url()."assets/images/packages/".$value ?>" class="img-fluid" alt="">
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
      </div>
    <div class="bg-light pb-4">
        <div class="container custom my-4">
          <div class="row justify-content-center">
              <div class="col-md-6">
                  <div class="title">Hightlights</div>
              </div>
          </div>
            <div class="row justify-content-center">
              <div class="col-md-5">
                <img src="<?php echo base_url()."assets/images/packages/".$images[1] ?>" class="img-fluid mb-4" alt="">
              </div>
              <div class="col-md-5">
                  <?php 
                    foreach ($highlights as $key => $value) {
                  ?>
                  <h5 class="bold color-blue"><?php echo $value['caption'] ?></h5>
                  <p class="bold ls-7"><?php echo $value['detail'] ?></p>
                  <?php
                    }
                  ?>
              </div>
            </div>
        </div>
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4052252.794084249!2d107.66293731926729!3d-7.322625059638852!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7aa07ed2323237%3A0x86fe1c59d6abed60!2sJava!5e0!3m2!1sen!2sid!4v1581138288049!5m2!1sen!2sid" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    <div class="container custom my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="title">Itinerary</div>
        </div>
    </div>
        <div class="row justify-content-center mt-3">
            <div class="col-md-10 cc">
            <div id="accordion">
              <?php 
                foreach ($itinerary as $key => $value) {
              ?>
              <div class="card">
                <div class="card-header" id="headingThree">
                  <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse<?php echo $key ?>" aria-expanded="false" aria-controls="collapseThree">
                      <i class="fa" aria-hidden="true"></i>
                      <span>
                      <?php 
                        echo "DAY ".$value['day']." - ".$value['caption'];
                        ?>
                        </span>
                    </button>
                  </h5>
                </div>
                <div id="collapse<?php echo $key ?>" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-body">
                    <?php 
                      echo $value['detail']
                    ?>
                  </div>
                </div>
              </div>
                <?php } ?>
            </div>                
            </div>       
        </div>
    </div>
</div>
<div class="bg-light">
    <div class="container custom my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="title">Informations</div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="box-white">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                  <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#include">Include</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#exclude">Exclude</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#info">Informations</a>
                  </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                  <div id="include" class="container tab-pane active"><br>
                  <ul>
                    <?php
                      foreach ($info['include'] as $key => $value) {
                        echo "<li>".$value['text']."</li>";
                      }
                    ?>
                  </ul>
                  </div>
                  <div id="exclude" class="container tab-pane fade"><br>
                  <ul>
                    <?php
                      foreach ($info['exclude'] as $key => $value) {
                        echo "<li>".$value['text']."</li>";
                      }
                      ?>
                  </ul>
                  </div>
                  <div id="info" class="container tab-pane fade"><br>
                  <?php 
                    echo $package['informations']
                  ?>
                  </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container custom my-5">
<div class="row justify-content-center">
        <div class="col-md-6">
          <div class="title">Get In Touch</div>
        </div>
    </div>
    <div class="row justify-content-center mb-5">
        <div class="col-md-9 text-center">
          <div class="content">
          For the trips we have designed all through field operator research,
            we try to fulfill all the wishes of clients from all walks of life
            and we convey experiences like local people with international
            service.
            <br>
            <a href="" class="btn btn-success btn-bold mt-4"><span class="fa fa-whatsapp"></span> Book this package</a>

            </div>
        </div>
    </div>
</div>
<div class="container custom my-5 pt-5">
      <div class="row justify-content-center ">
        <div class="col-md-6">
          <div class="title">Tour Packages</div>
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
      <div class="row my-5 packages h-270">
        <div class="col-md-4 cc">
          <div class="package">
            <div class="info-top">
              <img src="<?php echo base_url() ?>assets/images/destinations/2.jpg" alt="" />
              <div class="top">
                <div class="info">
                  Hiking Tour
                </div>
              </div>
              <div class="bottom">
                <div class="name">
                  3d 2n Bromo Ijen
                </div>
              </div>
              <div class="layer"></div>
            </div>
            <div class="info-bottom">
              <p>start from (/pax) :</p>
              <div class="idr">
                2.000.000
              </div>
              <div class="book">
                <a href="" class="btn btn-primary">Book now</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 cc">
          <div class="package">
            <div class="info-top">
              <img src="<?php echo base_url() ?>assets/images/destinations/1.jpg" alt="" />
              <div class="top">
                <div class="info">
                  Hiking Tour
                </div>
              </div>
              <div class="bottom">
                <div class="name">
                  3d 2n Bromo Ijen
                </div>
              </div>
              <div class="layer"></div>
            </div>
            <div class="info-bottom">
              <p>start from (/pax) :</p>
              <div class="idr">
                2.000.000
              </div>
              <div class="book">
                <a href="" class="btn btn-primary">Book now</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 cc">
          <div class="package">
            <div class="info-top">
              <img src="<?php echo base_url() ?>assets/images/destinations/4.jpg" alt="" />
              <div class="top">
                <div class="info">
                  Hiking Tour
                </div>
              </div>
              <div class="bottom">
                <div class="name">
                  3d 2n Bromo Ijen
                </div>
              </div>
              <div class="layer"></div>
            </div>
            <div class="info-bottom">
              <p>start from (/pax) :</p>
              <div class="idr">
                2.000.000
              </div>
              <div class="book">
                <a href="" class="btn btn-primary">Book now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col text-center">
          <a href="" class="btn btn-outline-primary btn-bold">MORE PACKAGE</a>
        </div>
      </div>
    </div>
