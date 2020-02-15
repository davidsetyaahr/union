<div class="container-fluid">

        <!-- Breadcrumbs-->
        <h1 class="mt-4">Add PDF</h1>
          <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
              <li class="breadcrumb-item active">List PDF</li>
          </ol> 

        <!-- Content DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            Add PDF</div>
          <div class="card-body">
            <form action="insert" method="post">
            <div class="row">
                <div class="col-md-6">
                    <label for="">Package Name</label>
                    <input type="text" class="form-control" name="package">
                </div>
                <div class="col-md-6">
                    <label for="">Link PDF</label>
                    <input type="text" class="form-control" name="url">
                </div>
                <div class="col-md-6">
                <br>
                <button class="btn btn-primary" type="submit">Save</button>
                <button class="btn btn-warning" type="reset">Reset</button>
                </div>
            </div>
            </form>
          </div>
        </div>

</div>