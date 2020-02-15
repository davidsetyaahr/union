<div class="container-fluid">

        <!-- Breadcrumbs-->

  <h1 class="mt-4">List PDF</h1>
  <ol class="breadcrumb mb-4">
      <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
      <li class="breadcrumb-item active">List PDF</li>
  </ol>        

        <!-- Content DataTables Example -->
  <div class="card mb-4">
      <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div>
      <div class="card-body">
        <a href="pdf/add" class="btn btn-success">Add PDF</a>
          <hr>
          <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                      <tr>
                        <th>No</th>
                        <th>Package</th>
                        <th>Url</th>
                        <th>Opsi</th>
                      </tr>
                  </thead>
                  <tfoot>
                      <tr>
                        <th>No</th>
                        <th>Package</th>
                        <th>Url</th>
                        <th>Opsi</th>
                      </tr>
                  </tfoot>
                  <tbody>
                      <?php $no = 1; foreach ($pdf as $d) { ?>
                      <tr>
                          <td><?php echo $no;?></td>
                          <td><?php echo $d['package'] ?></td>
                          <td><a href="pdf/view/<?php echo $d['id_pdf'] ?>" target="_blank">View PDF</a></td>
                          <td><a data-toggle="modal" data-target="#sendWA" href="" class="btn btn-success btn-sm send-wa" data-id="<?php echo $d['id_pdf'] ?>">Send WA</a>&nbsp;<a href="<?php echo base_url()."pdf/delete/".$d['id_pdf'] ?>" class="btn btn-danger btn-sm">Delete</a></td>
                      </tr>

                      <?php $no++; } ?>
                        
                  </tbody>
              </table>
          </div>
      </div>
  </div>

</div>

<div id="sendWA" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
      <form method="post" action="pdf/sendwa">
        <input type="hidden" name="id_pdf" id="id_pdf">
        <label for="">Phone Number</label>
        <input type="text" class="form-control" name="phone" placeholder="ex:628121611113">
        <br>
        <button type="submit" class="btn btn-success btn-sm">SEND</button>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>