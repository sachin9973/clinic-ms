<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClinicHospitalMS.Views.Guest.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Liab/Bootstrap/css/bootstrap.min.css" />
    <link href="../../CSS/Home.css" rel="stylesheet" />
</head>
<body>
    <!-- <form id="form1" runat="server">
        <div>
        </div>
    </form>-->
     <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand text-light"  href="#">Clinic</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-light"  href="#">Doctors</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Laboratorian</a>
        </li>
           <li class="nav-item">
          <a class="nav-link text-light" href="#">Receptionist</a>
        </li>
           <li class="nav-item">
          <a class="nav-link text-light" href="../Login.aspx">Login</a>
        </li>
          </ul>
    </div>
  </div>
</nav>
    <div class="row " style="background-image:url(../../Assets/Images/Home.jpg); height:450px;background-size:cover">
       <!-- <img class="Homeimg" src="../../Assets/Images/Home1.jpg" />-->
        <div class="col-md-2"></div>
        <div class="col-md-5">
            <div class="row" style="height:80px"></div>
            <h2 class="txt"> Your Health is our only Priority</h2>
            <h2 class="txt"> Always Serving you and taking Care</h2>
            <p class="txt">Our Clinic has been created in 2022 by a group of persons who wanted.
             Our Clinic has been created in 2022 by a group of persons who wanted</p>
            <button class="btn btn-primary"> ContactUs</button>
            <button class="btn btn-primary"> Feedback</button>
        </div>
    </div>
    <div class="row bg-primary" >
        <div class="row" style="height:10px"></div>
        <div class="row">
             <div class="col-md-3 bg-light offset-1 rounded-3">
            <div class="row">
                <div class="col-2">
                    <img src="#" />
                </div>
                <div class="col-7">
                    <h5 class="text-center"> Surgery</h5>
                    <p>The Clinic has a Surgery Department with Qualified Doctors</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 bg-light offset-1 rounded-3">
            <div class="row">
                <div class="col-2">
                    <img src="#" />
                </div>
                <div class="col-7">
                    <h5 class="text-center"> Urology</h5>
                    <p>The Clinic has a Surgery Department with Qualified Doctors</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 bg-light offset-1 rounded-3">
            <div class="row">
                <div class="col-2">
                    <img src="#" />
                </div>
                <div class="col-7">
                    <h5 class="text-center"> Ophtalmology</h5>
                    <p>The Clinic has a Surgery Department with Qualified Doctors</p>
                </div>
            </div>
        </div>
        </div>
        <div class="row" style="height:20px"></div>
       
      
    </div>

</body>
</html>
