<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AD_Project2.home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <title>NAAC accrediation System</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>        
  <meta content="" name="keywords"/>
  <meta content="" name="description"/>
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet"/>

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="lib/animate/animate.min.css" rel="stylesheet"/>
   <link href="css/mainstyle.css" rel="stylesheet" />
  <!-- Main Stylesheet File -->
  <style>

  </style>
</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">        
        <!-- Uncomment below if you prefer to use a text logo -->
        <h1><a href="#hero">AD Project</a></h1>
      </div>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#hero">Home</a></li>          
          <li><a href="login.aspx">Login</a></li>
          <li><a href="register.aspx">Sign Up</a></li>                  
        </ul>
      </nav>
    </div>
  </header>

  

  <!--==========================
    Hero Section
  ============================-->
  <section id="hero">
    <div class="hero-container">
      <h1>NAAC Accrediation System</h1>
      <h2>This is the project of NAAC accrediation System</h2>
      <a href="register.aspx" class="btn-get-started">Register</a>
    </div>
  </section><!-- #hero -->
    
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <scri pt src="lib/waypoints/waypoints.min.js"></scri>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
    </form>
</body>
</html>