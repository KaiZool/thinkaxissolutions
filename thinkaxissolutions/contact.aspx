<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Start, CSS Files -->
    <link rel="stylesheet" href="css/csscontact.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- End, CSS Files -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Start, JavaScript Files -->
    <script type="text/javascript" src="script/resetbtn2.js"></script>
    <noscript></noscript>
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <noscript></noscript>
    <script type="text/javascript" src="script/map.js"></script>
    <noscript></noscript>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?sensor=false">
    </script> -->
<!-- End, JavaScript Files -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<!-- getbootstrap.com (n.d.). Carousel carousel.js [Codings]. Retrieved April 22, 2016 from: http://getbootstrap.com/components/#navbar -->
<!-- Start, Nav Header -->
<nav class="navbar navbar-default nav-bar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">LCB</a>
            </div>
                
            <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="default.aspx"> Home <span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="contact.aspx"> Contact </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Facilities <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"> Library </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"> Incubation Room </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Lecture Room </a></li>
                            </ul>
                        </li>
                    </ul>
                    
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                    <button type="submit" class="btn btn-default">Send</button>
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

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<form id="form1" runat="server"> 
<div class="container table-responsive">
    <table class="table" id="Contact_us">
        <thead>
            <tr>
                <th data-toggle="true" colspan="3"> <p> Contact Us </p></th>
            </tr>
        </thead>

        <tbody>
            <tr> 
                <td colspan="3"> <p> Please enter in your details </p></td>
            </tr>
 
            <tr>
                <th> Name: </th>
                <td class="col2"><asp:textbox runat="server" ID="txtboxname1" CssClass="txtname1"></asp:textbox>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:requiredfieldvalidator runat="server" errormessage="Please enter name" ID="validname" ControlToValidate="txtboxname1" ForeColor="Red"></asp:requiredfieldvalidator></td>
            </tr>

            <tr>
                <th> Email: </th>
                <td class="col2"><asp:textbox runat="server" ID="txtboxemail1" CssClass="txtemail1"></asp:textbox>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:requiredfieldvalidator runat="server" errormessage="Please enter email" ID="validemail" ControlToValidate="txtboxemail1" ForeColor="Red"></asp:requiredfieldvalidator></td>
            </tr>

            <tr>
                <th class="table1"> Subject: </th>
                <td class="col2"><asp:textbox runat="server" ID="txtboxsub1" CssClass="txtsub1"></asp:textbox>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:requiredfieldvalidator runat="server" errormessage="Please enter subject" ID="validsub" ControlToValidate="txtboxemail1" ForeColor="Red"></asp:requiredfieldvalidator></td>
            </tr>

            <tr> 
                <th> Message: </th>
                <td class="col2"><asp:textbox runat="server" ID="txtboxmsg1" CssClass="txtmsg1" TextMode="MultiLine"></asp:textbox><br />
                                 <asp:literal runat="server" ID="literal1"></asp:literal>
                </td>
            </tr>

           <tr>
               <td colspan="3" class="row2"><asp:requiredfieldvalidator runat="server" errormessage="*Please enter your message" ForeColor="Red" ControlToValidate="txtboxmsg1" ID="validmsg"></asp:requiredfieldvalidator></td>
            </tr> 

           <tr>
               <td colspan="3">
                 <asp:button runat="server" text="Send" ID="btnsend" OnClick="btnsend_click" />
                <input id="btnreset" type="reset" value="Reset" onclick="return reset1_onclick()" />
            </tr> 
</table>
</div>

<div class="container">
    <div class="row contact">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <img src="images/basic2-059_pin_location-512.png" alt="location" class="img-circle"/>
            <!-- Picons.me. (n.d.). Gps, location, map, maps, marker, navigation,. [Online Image]. Retrieved April 26, 2016, from: https://www.iconfinder.com/icons/169985/gps_location_map_maps_marker_navigation_pin_icon -->
            <h2> Location: </h2>
            <p> Plaza Abdul Razak, <br />
            Jalan Laksamana Abdul Razak, <br />
            Bandar Seri Begawan <br /></p>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-12">
            <img src="images/phone-512.png" alt="phone" class="img-circle"/>
            <!-- Алексей Миронов. (n.d.). Call, circle, communication, mobile, phone, telephone icon. [Online Image]. Retrieved April 26, 2016, from: https://www.iconfinder.com/icons/281830/call_circle_communication_mobile_phone_telephone_icon -->
            <h2> Contact Info: </h2>
            <p> Mobile Nom: +(673) 12345 <br />
                Office Nom: 674324 <br />
                Fax: +1-345-4567438 <br/>
            </p>

        </div>
                 
        <div class="col-md-4 col-sm-4 col-xs-12">
            <img src="images/email-flag-icons-64790.png" alt="email icon" class="img-circle"/>
            <!-- email flag icons [Online Image]. (n.d.). Retrieved April 26, 2016, from: http://www.free-icons-download.net/icons/email-flag-icons-64790.html -->
            <h2> E-mail: </h2>
            <p> enquiries@laksamanacollege.edu.bn </p>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-11">
        <div class="embed-responsive embed-responsive-16by9 map">
            <div id="googleMap"></div>
            <!-- Google. (n.d.). [Google Maps for Laksamana College of Business, Roof Top, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan BA1712]. Retrieved April 26, 2016, from https://goo.gl/maps/ILt8O -->
        </div>
    </div>
 </div>
</form>
</asp:Content>

