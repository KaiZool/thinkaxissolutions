<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Start, CSS files -->
    <link rel="stylesheet" href="css/cssdefault.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- End, CSS Files -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" runat="server">
    <!-- getbootstrap.com (n.d.). Carousel carousel.js [Codings]. Retrieved Jun 4, 2019 from: http://getbootstrap.com/components/#navbar -->
<!-- Start, Nav Header -->
<nav class="navbar navbar-default nav-bar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"> LCB </a>
        </div>
                
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"> Home <span class="sr-only">(current)</span></a></li>
                <li><a href="contact.aspx"> Contact </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Facilities <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"> Lab </a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"> Lecture Room </a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"> Tutorial Room </a></li>
                        </ul>
                </li>
            </ul>
                    
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <label for="formcontrol1">Form: </label>
                    <input ID="formcontrol1" type="text" name="formcontrol" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
      
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"> Admin </a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Account <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="adminreg.aspx"> Register </a></li>
                            <li><a href="adminlogin.aspx"> Login </a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="RoomBookingPage.aspx"> Room Booking </a></li>
                        </ul>
                    </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- End, Nav Header -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Start, Facilities -->       
<hr class="separator">
    <div class="page-header">
        <h2> View our Facilities </h2>
    </div>
    
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="thumbnail">
                <img src="images/incubation.jpg" alt="incubation room" width="350" height="250">
                    <div class="caption">
                        <h3> Incubation Room </h3>
                        <p> A place where people can gather together and share ideas </p>
                    </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="thumbnail">
                <img class="top" src="images/img_0162.jpg" alt="Lecture Room" width="350" height="250"/>
                    <div class="caption">
                        <h3> Lecture Room </h3>
                        <p> Lecturers can book rooms to have extra classes with their students </p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="thumbnail">
                    <img src="images/img_0168.jpg" alt="IT novel" width="350" height="250"/>
                    <!-- It [Online Image]. (n.d.). Retrieved April 2, 2016, from: http://www.goodreads.com/book/show/830502.It -->
                        <div class="caption">
                            <h3> Tutorial Room</h3>
                                <p> Studens can book tutorial rooms available in our library to work on their projects </p>
                        </div>
                </div>
            </div>
    </div>
<!-- End, Products -->
   

<div class="container">
    <div class="row links">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="contact.aspx"><img src="images/grey_new_seo2-41-512.png" alt="contact icon" class="img-circle"/></a>
                                   <!-- Reen, L. (n.d.). Call, communication, connect, contact, contac [Online Image]. Retrieved from: https://www.iconfinder.com/icons/342445/call_communication_connect_contact_contact_info_contact_us_email_icon -->
            <h2> Get In Touch </h2>
            <p> Please click the image above to contact us for any enquiries you may have </p>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="RoomBookingPage.aspx"><img src="images/booking2.png" alt="bookingsicon" class="img-circle"></a>
            <h2> Our Facilities </h2>
            <p> Please click the image above to view our products/ books </p>
        </div>
                 
        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="adminreg.aspx"><img src="images/users_woman-512.png" alt="communication" class="img-circle"></a>
            <!-- Ryazancev, A. (n.d). Account, accounts, female, group, profile, use [Online Image]. Retrieved from: https://www.iconfinder.com/GlumPix -->
            <h3> User Login </h3>
            <p> Please click the image above to register or login </p>
        </div>
    </div>
</div>
</asp:Content>


