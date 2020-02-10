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
          <div class="col-md-12">
            <div class="title-big text-center">
              Union Tour Operator
            </div>
            <p class="text-center">When they go low we go high!. Be a Traveler Not a Tourist</p>
            <div class="row justify-content-center">
              <div class="col-md-7">
              <div class="tour-finder px-4 py-3">
                <p class="color-blue bold mb-3"><span class="fa fa-search"></span> Tour finder</p>
                <div class="row">
                  <div class="col-md-6 cc">
                    <select name="" id="" class="custom-select">
                      <option value="" data-icon="fa fa-globe" readonly>Destinations
                      </option>
                      <option value="">Region 1</option>
                      <option value="">Region 2</option>
                    </select>
                  </div>
                  <div class="col-md-4 cc">
                    <select name="" id="" class="custom-select">
                      <option value="" data-icon="fa fa-briefcase" readonly>Tour Style
                      </option>
                      <option value="">Style 1</option>
                      <option value="">Style 2</option>
                    </select>
                  </div>
                  <div class="col-md-2 cc">
                    <button style="height:100%" class="btn btn-block btn-primary py-2"><span class="fa fa-search"></span></button>
                  </div>
              </div>
                </div>
              </div>
            </div>
<!--             <a href="" class="btn btn-primary px-5">
              <span class="fa fa-search"></span> Find a trip</a
            >
 -->          </div>
        </div>
      </div>
    </div>
    <div class="bg-light">
    <div class="container custom my-4 section">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="title mt-5">Get inspiration for your next trip</div>
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
        <div class="col-md-12 owl-carousel img-region">
        <?php 
          foreach ($region as $key => $value) {
        ?>
        <div class="item">
          <div class="region">
            <img
              src="assets/images/banner/region/<?php echo $value['banner'] ?>"
              class="img-fluid"
              alt=""
            />
            <div class="layer">
              </div>
                <div class="text">
                <?php echo $value['region_name'] ?>
                <span class="float-right fa fa-arrow-circle-right"></span>
                </div>
          </div>
        </div>
       <?php } ?>
      </div>
      </div>
    </div>
    </div>
    <div class="container custom my-5">
      <div class="row">
        <div class="col-md-4">
          <div class="title left">Tour Packages</div>
        </div>
        <div class="col-md-8">
        <ul class="nav nav-tabs mt-2 float-right filter-style" data-url="<?php echo base_url()."frontend/packages/bystyle"; ?>">
            <?php 
              foreach ($styles as $key => $value) {
                $active = $value['id_style']==1 ? "active" : "";
            ?>
              <li class="nav-item">
                <a class="nav-link choose-style ls-7 <?php echo $active ?>" data-toggle="tab" href="#include" id="<?php echo $value['id_style'] ?>">
                <span class="<?php echo $value['icon'] ?>"></span>
                <?php echo $value['style_name'] ?></a>
              </li>
          <?php } ?>
         </ul>
        </div>
      </div>
      <div class="row my-2 packages h-220">
            <?php 
              $loop = array(
                "package" => $activeStyle,
              );
              $this->load->view("frontend/packages/loop-package", $loop);
            ?>
        </div>
        <div class="row">
          <div class="col text-center">
            <a href="packages" class="btn btn-outline-primary btn-bold mt-3">MORE PACKAGE</a>
          </div>
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
      