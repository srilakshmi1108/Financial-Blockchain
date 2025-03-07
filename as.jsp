<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
     <style>
        tr{
            color:black;
        }
        td{
            color: black;
        }
    </style>
     <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Added Succesfull');</script>
    <%}%>
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
            <a href="ahome.jsp" class="nav-item nav-link ">Home</a>
            <a href="af.jsp" class="nav-item nav-link ">Add Finance</a>
            <a href="ac.jsp" class="nav-item nav-link">Add Contractor</a>
            <a href="ae.jsp" class="nav-item nav-link">Add Engineer</a>
            <a href="as.jsp" class="nav-item nav-link active">add Supervisor</a>
            <a href="aa.jsp" class="nav-item nav-link">Add Authority</a>
            <a href="index.html" class="nav-item nav-link">Logout</a>
          </div>
         
        </div>
      </nav>
    </div>
    <!-- Navbar End -->

    <!-- Header Start -->
    <div class="container-fluid bg-primary px-0 px-md-5 mb-5" style="min-height: 90vh;max-height: auto">
        <br><br><br>    
          <center>
             <div class="login-card bg-white p-4">
    <div class="form-header">
        <h5>Add Supervisor</h5>
    </div>
    <form action="asact.jsp" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Username</label>
            <input type="text" class="form-control" id="email" placeholder="Enter your username" name="username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password"  required>
        </div>
        
         <div class="mb-3">
            <label for="password" class="form-label">Email</label>
            <input type="email" class="form-control" id="password" placeholder="Enter your email" name="email"  required>
        </div>
        
        <div class="mb-3">
            <label for="password" class="form-label">Mobile</label>
            <input type="text" class="form-control" id="password" placeholder="Enter your mobile" name="mobile"  required>
        </div>
       
        <button type="submit" class="btn btn-primary w-100">Submit</button>
        
    </form>
</div>
          </center>
         <br><br>  
        
        <%
            
           try{ 
	
        Connection co = databasecon.getconnection();
        PreparedStatement pst=co.prepareStatement("select * from supervisor ");
        ResultSet rs=pst.executeQuery(); 
            
            %>
        
          <center>
               <div class="container table-container">
  <h4 class="text-center mb-4">View Forensic</h4>
  <table class="table table-bordered table-hover table-striped">
    <thead>
      <tr>
        <th>username</th>
        <th>email</th>
        <th>Mobile</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
         <%
        while(rs.next()){
        %>
      <tr>
        <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td>
            <a href="asdel.jsp?username=<%=rs.getString(1)%>&email=<%=rs.getString(3)%>"><button class="btn btn-primary btn-sm">Delete</button></a>
          
        </td>
      </tr>
     <%
        }
        %>
     
    </tbody>
  </table>
</div>
        <% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
          </center>
          <br><br><br>
    </div>
 
   
  </body>
</html>
