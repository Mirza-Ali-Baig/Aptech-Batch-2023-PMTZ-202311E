<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CRUD App : Create </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
          <div class="col-md-6 offset-md-3">
            <h2 class="text-center text-dark mt-5">Create Employees</h2>
            <div class="text-center mb-5 text-dark">CRUD APP</div>
            <div class="card my-5">
    
              <form action="/employees/add" method="POST" class="card-body cardbody-color p-lg-5">
                @csrf
    
                <div class="mb-3">
                  <input type="text" name="name" class="form-control"
                    placeholder="Name">
                </div>
                <div class="mb-3">
                  <input type="text" name="email" class="form-control"
                    placeholder="Email">
                </div>
                <div class="mb-3">
                  <input type="text" name="designation" class="form-control"
                    placeholder="Designation">
                </div>
                <div class="mb-3">
                  <input type="text" name="age" class="form-control"
                    placeholder="Age">
                </div>
                <div class="text-center"><button type="submit" class="btn btn-primary btn-color px-5 mb-5 w-100">Add Employee</button></div>
              </form>
            </div>
    
          </div>
        </div>
      </div>
       
</body>
</html>