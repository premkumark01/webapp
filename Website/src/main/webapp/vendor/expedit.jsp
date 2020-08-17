<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Update</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/scrolling-nav.css" rel="stylesheet">
   <!-- Custom script for this template -->
  <script src="js/adminpanel.js"></script>
  <script type="text/javascript" src="js/edit.js"></script>
</head>
<body id="page-top">
  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark  bg-dark fixed-top">
    <a class="navbar-brand" href="/">Web Page</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">


   

     <li class="nav-item active">
          <a class="nav-link" href="/">Logout<span class="sr-only">(current)</span></a>
        </li>
      
       
      </ul>
     
    </div>
  </nav>
 
 
 
 
 
 


  <div class="card">
    <div class="card-header">
      <h1>Update</h1>
    </div>
    <div class="card-body">
      <form method="post" action="regi" name="logval" onsubmit="updatedata()">
         <div class="form-group">
          <label for="exampleFormControlinput5">Id</label>
          <input
            type="number"
            class="form-control"
            name="id"
            id="exampleFormControlInput1"
            placeholder="userid"
            required
          />
        </div>
        
        <div class="form-group">
          <label for="exampleFormControlInput1">First Name</label>
          <input
            type="text"
            class="form-control"
            name="fname"
            id="exampleFormControlInput1"
            placeholder="your name"
            required
          />
        </div>
        <div class="form-group">
          <label for="exampleFormControlInput2">Last Name</label>
          <input
            type="text"
            class="form-control"
            name="lname"
            id="exampleFormControlInput1"
            placeholder="surname"
            required
          />
        </div>
        <div class="form-group">
          <label for="exampleFormControlInput3">Email</label>
          <input
            type="text"
            class="form-control"
            name="email"
            id="exampleFormControlInput1"
            placeholder="name@example.com"
            required
          />
        </div>
        <div class="form-group">
          <label for="exampleFormControlInput4">Mobile No</label>
          <input
            type="text"
            class="form-control"
            name="mobile"
            id="exampleFormControlInput1"
            placeholder="0123456789"
            required
          />
        </div>
       

        <div class="form-group">
          <input
            type="submit"
            class="form-control btn btn-primary"
            name="submit"
            id="updatedata"
            value="Update"
          />
        </div>
      </form>
    </div>
  </div>

 
 
 
 

  <!-- Footer -->
  <footer class="py-2 bg-dark fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Web Page 2020</p>
    </div> 

   </footer> 

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom JavaScript for this theme -->
  <script src="js/scrolling-nav.js"></script>

</body>

</html>






