    <video autoplay muted loop id="myVideo">
      <source
        src="assets/videos/Medan, samosir - video destination - Wonderful Indonesia HD.mp4"
        type="video/mp4"
      />
      Your browser does not support HTML5 video.
    </video>
    <div class="overlay-video">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <div class="title-big">
              Welcome to Union Tour Operator
            </div>
            <p>When they go low we go high!. Be a Traveler Not a Tourist</p>
            <a href="" class="btn btn-primary px-5">
              <span class="fa fa-search"></span> Find a trip</a
            >
          </div>
        </div>
      </div>
    </div>
    <div class="container custom my-4 section">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="title mt-5">Indonesia Trip</div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-9 text-center">
          <div class="content">
            The largest island nation on the planet is as diverse as its
            breadth. With views like other worlds, mystical culture,
            extraordinary cuisine, exotic beaches, and friendly people, there is
            no place in this world that offers more like the one in Indonesia.
            See our carefully crafted adventures throughout Indonesia that
            showcase the best of every destination.
          </div>
        </div>
      </div>
      <div class="row justify-content-center my-5 destinations bottom">
        <?php 
          foreach ($region as $key => $value) {
        ?>
        <div class="col-md-6 mb-3 cc">
          <div class="destination">
            <img
              src="assets/images/banner/region/<?php echo $value['banner'] ?>"
              class="img-dest"
              alt=""
            />
            <div class="layer">
              </div>
                <div class="text">
                <?php echo $value['region_name'] ?>
                </div>
          </div>
        </div>
       <?php } ?>
      </div>
    </div>
    <div class="parallax">
      <div class="layer">
        <div class="text">
          <h1>Join to our Group Trip</h1>
          <p>
            For clients who want to join the fun, we offer regularly scheduled
            departures. Taking advantage of the benefits of group travel
            expenses, Joining in a Trip is a great way to get to know you
            Indonesia in a fun and budget-friendly way.
          </p>
          <a href="" class="btn btn-primary btn-bold">READ MORE</a>
        </div>
      </div>
    </div>
    <div class="container custom my-5">
      <div class="row justify-content-center">
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
      <div class="row justify-content-center">
        <div class="col text-center">
          <a href="packages" class="btn btn-outline-primary btn-bold">MORE PACKAGE</a>
        </div>
      </div>
    </div>
      