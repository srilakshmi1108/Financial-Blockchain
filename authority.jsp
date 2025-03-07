<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Financial Fraud</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="Free HTML Templates" name="keywords" />
    <meta content="Free HTML Templates" name="description" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Handlee&family=Nunito&display=swap"
      rel="stylesheet"
    />

    <!-- Font Awesome -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />

    <!-- Flaticon Font -->
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet" />
  </head>

  <body>
    <!-- Navbar Start -->
    <div class="container-fluid bg-light position-relative shadow">
      <nav
        class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 px-lg-5"
      >
        <a
          href=""
          class="navbar-brand font-weight-bold text-secondary"
          style="font-size: 50px"
        >
          <i class="flaticon-043-teddy-bear"></i>
          <span class="text-primary">Financial Fraud</span>
        </a>
        <button
          type="button"
          class="navbar-toggler"
          data-toggle="collapse"
          data-target="#navbarCollapse"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div
          class="collapse navbar-collapse justify-content-between"
          id="navbarCollapse"
        >
           <div class="navbar-nav font-weight-bold mx-auto py-0">
            <a href="index.html" class="nav-item nav-link ">Home</a>
            <a href="admin.jsp" class="nav-item nav-link ">Admin</a>
            <a href="fd.jsp" class="nav-item nav-link">Finance Department</a>
            <a href="cont.jsp" class="nav-item nav-link">Contractors</a>
            <a href="eng.jsp" class="nav-item nav-link">Engineers</a>
            <a href="sup.jsp" class="nav-item nav-link">Supervisors</a>
            <a href="authority.jsp" class="nav-item nav-link active">Authority</a>
          </div>
         
        </div>
      </nav>
    </div>
    <!-- Navbar End -->

    <!-- Header Start -->
    <div class="container-fluid bg-primary px-0 px-md-5 mb-5" style="min-height: 90vh;max-height: auto">
        <br><br><br>  <br><br><br>   
          <center>
             <div class="login-card bg-white p-4">
    <div class="form-header">
        <h5>Authority Login</h5>
    </div>
    <form action="hact.jsp" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Username</label>
            <input type="text" class="form-control" id="email" placeholder="Enter your username" name="username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password"  required>
        </div>
       
        <button type="submit" class="btn btn-primary w-100">Login</button>
        
    </form>
</div>
          </center>
     
    </div>
 
  
  </body>
</html>
