<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

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
                            <li><a href="#"> Library </a></li>
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

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent3" Runat="Server">
    <div class="container table-responsive">
    <table class="table" id="login">
        <thead>
            <tr>
                <th data-toggle="true" colspan="3"> <p> Returning Admin </p></th>
            </tr>
        </thead>

        <tbody> 
            <tr> 
                <th> Enter your username: </th>
                <td class="col2"><asp:TextBox ID="txtboxadminuser3" runat="server" CssClass="txtadminuser3" ForeColor="Black"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validadminuser3" runat="server" ErrorMessage="*Please enter username" ControlToValidate="txtboxadminuser3" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Enter your password: </th>
                <td class="col2"><asp:TextBox ID="txtboxadminpass3" runat="server" CssClass="txtadminpass3" TextMode="Password" ForeColor="Black"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validadminpass3" runat="server" ErrorMessage="*Please enter your password" ControlToValidate="txtboxadminpass3" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td colspan="3">
                    <asp:Button ID="btnadminsignin" runat="server" Text="Sign In" OnClick="btnadminsignin_click" ForeColor="Black" />
                    <asp:Button ID="btngotoadmminreg" runat="server" Text="Register as Admin" ForeColor="Black" OnClick="btngotoadmminreg_click" />
                    <asp:Button ID="btnreturn" runat="server" Text="Continue as Anonymnous" ForeColor="Black" OnClick="btnreturn_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>

        </tbody>
    </table>
</div>
</asp:Content>

