<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>User Login</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/scrolling-nav.css" rel="stylesheet">
  <!-- Custom script for this template -->
  <script src="js/adminpanel.js"></script>
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


<li class="nav-item dropdown active">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            User
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="register.jsp">User Registration</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="login.jsp">User Login</a>
          </div>
        </li>
   
 <li class="nav-item active">
          <a class="nav-link" href="alogin.jsp">Admin Login <span class="sr-only">(current)</span></a>
        </li>
      
       
      </ul>
     
    </div>
  </nav>
 
 
 
 
 
 

<div class="container" style="margin-top: 70px;">
  
  
    <strong>${error}</strong> 
    
  <div class="card">
    <div class="card-header">
      <h1>Login</h1>
    </div>
    <div class="card-body">
      <form method="post" action="logi" name="logval" onsubmit="return validateForm()">
        <div class="form-group">
          <label for="exampleFormControlInput1">Email Id</label>
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
          <label for="exampleFormControlSelect1">Password</label>
          <input
            type="password"
            class="form-control"
            name="password"
            id="exampleFormControlInput1"
            placeholder="password"
            required
          />
        </div>

        <div class="form-group">
          <input
            type="submit"
            class="form-control btn btn-primary"
            name="submit"
            id="exampleFormControlInput1"
            value="Login"
          />
        </div>
      </form>
    </div>
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






