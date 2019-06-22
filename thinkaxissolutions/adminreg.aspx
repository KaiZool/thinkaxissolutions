<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="adminreg.aspx.cs" Inherits="adminreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head3" Runat="Server">
        <!-- Start, CSS Files -->
    <link rel="stylesheet" href="css/cssadmin.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- End, CSS Files -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation3" Runat="Server">
    <!-- getbootstrap.com (n.d.). Carousel carousel.js [Codings]. Retrieved June 4, 2019 from: http://getbootstrap.com/components/#navbar -->
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
                        <li><a href="../default.aspx"> Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="../contact.aspx"> Contact </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Facilities <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"> Incubation </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"> Tutorial </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"> Lecture Room </a></li>
                            </ul>
                        </li>
                    </ul>
      
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="adminlogin.aspx"> Admin </a></li>
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

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent3" Runat="Server">
    <div class="container table-responsive">
    <table class="table" id="register">
        <thead>
            <tr>
         <th data-toggle="true" colspan="3"> <h2> Administration Registration</h2></th>
            </tr>
        </thead>

        <tbody> 
            <tr> 
                <th> Enter your Email: </th>
                <td class="col2"><asp:TextBox ID="txtboxemailadmin" runat="server" CssClass="txtemailadmin" TextMode="Email" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validemailadmin" runat="server" ErrorMessage="*Email required" ControlToValidate="txtboxemailadmin" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Enter Username: </th>
                <td class="col2"><asp:TextBox ID="txtboxadminusername" runat="server" CssClass="txtadminusername" ForeColor="Black"></asp:TextBox>
                <asp:Label ID="lblusername" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validadminusername" runat="server" ErrorMessage="*Username required" ControlToValidate="txtboxadminusername" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Enter your Password: </th>
                <td class="col2"><asp:TextBox ID="txtboxadminpass" runat="server" CssClass="txtadminpassword" TextMode="Password" ForeColor="Black"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validadminpassword" runat="server" ErrorMessage="*Password required" ControlToValidate="txtboxadminpass" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Confirm your Password: </th>
                <td class="col2"><asp:TextBox ID="txtboxcadminpass" runat="server" CssClass="txtcadminpassword" TextMode="Password" ForeColor="Black"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validcadminpass" runat="server" ErrorMessage="*Please re-enter password" ControlToValidate="txtboxcadminpass" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td colspan="3">
                    <asp:Button ID="btnadminsignup" runat="server" Text="Sign Up" OnClick="btnadminsignup_click" ForeColor="Black" />
                    <asp:Button ID="btnadminlogin" runat="server" Text="Already Signed Up?" ForeColor="Black" OnClick="btnadminlo_click" />
                    <asp:Button ID="btnanonymous" runat="server" Text="Continue as an Anonymous User" ForeColor="Black" OnClick="btnanonymous_click" />
                </td>
            </tr>
        </tbody>
    </table>
</div>
</asp:Content>

