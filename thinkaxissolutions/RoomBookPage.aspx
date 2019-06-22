<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoomBookPage.aspx.cs" Inherits="RoomBookPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS files -->
    <link rel="stylesheet" href="css/cssdefault.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- End, CSS Files -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 546px;
    }
    .auto-style3 {
        width: 546px;
        height: 44px;
        border: 2px solid white;
    }
    .auto-style4 {
        height: 44px;
        width: 1005px;
        border: 2px solid white;
    }
    .auto-style6 {
        height: 96px;
        width: 705px;
        border: 2px solid white;
    }
    .auto-style7 {
        width: 546px;
        height: 269px;
        border: 2px solid white;
    }
    .auto-style8 {
        height: 269px;
        width: 1005px;
        border: 2px solid white;
    }
    .auto-style9 {
        width: 546px;
        height: 136px;
    }
    .auto-style10 {
        height: 136px;
        width: 705px;
        border: 2px solid white;
    }
    .auto-style11 {
        width: 50%;
        margin-right: 400px;
        border: 2px solid white;
    }
    .auto-style12 {
        width: 705px;
        border: 2px solid white;
    }
    .auto-style13 {
        margin-left: 92;
    }
    .auto-style14 {
        width: 546px;
        height: 96px;
        border: 2px solid white;
    }
    .auto-style15 {
        width: 546px;
        height: 38px;
        border: 2px solid white;
    }
    .auto-style16 {
        width: 705px;
        height: 38px;
        border: 2px solid white;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
    <!-- getbootstrap.com (n.d.). Carousel carousel.js [Codings]. Retrieved June 1, 2019 from: http://getbootstrap.com/components/#navbar -->
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

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="25pt" ForeColor="White" Text="Study Hub"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Font-Size="13pt" ForeColor="White" Text="Book Your Room Now"></asp:Label>
    <br />
        <br />
    <table class="auto-style11">
        <tr>
            <td class="auto-style3">&nbsp;Customer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Height="23px" Width="227px" CssClass="auto-style13"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">No of Persons</td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Height="18px" Width="226px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Select Date</td>
            <td class="auto-style8">
                <asp:Calendar ID="Calendar1" runat="server" ForeColor="White" Height="245px" Width="335px" CellPadding="6"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Select Time</td>
            <td class="auto-style6">Start Time&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Height="22px" Width="137px">
                    <asp:ListItem>10:00 AM</asp:ListItem>
                    <asp:ListItem>11:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>13:00 PM</asp:ListItem>
                    <asp:ListItem>14:00 PM</asp:ListItem>
                    <asp:ListItem>15:00 PM</asp:ListItem>
                    <asp:ListItem>16:00 PM</asp:ListItem>
                    <asp:ListItem>17:00 PM</asp:ListItem>
                    <asp:ListItem>18:00 PM</asp:ListItem>
                    <asp:ListItem>19:00 PM</asp:ListItem>
                    <asp:ListItem>20:00 PM</asp:ListItem>
                    <asp:ListItem>21:00 PM</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Time:&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Black" Height="18px" Width="124px">
                    <asp:ListItem>11:00 AM</asp:ListItem>
                    <asp:ListItem>12:00 PM</asp:ListItem>
                    <asp:ListItem>13:00 PM</asp:ListItem>
                    <asp:ListItem>14:00 PM</asp:ListItem>
                    <asp:ListItem>15:00 PM</asp:ListItem>
                    <asp:ListItem>16:00 PM</asp:ListItem>
                    <asp:ListItem>17:00 PM</asp:ListItem>
                    <asp:ListItem>18:00 PM</asp:ListItem>
                    <asp:ListItem>19:00 PM</asp:ListItem>
                    <asp:ListItem>20:00 PM</asp:ListItem>
                    <asp:ListItem>21:00 PM</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;<br />
                <br />
&nbsp;<asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Check Availability" Width="133px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Room List</td>
            <td class="auto-style10">
                <br />
                <asp:Label ID="lblBookRoom" runat="server"></asp:Label>
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Lecture Room 2a</asp:ListItem>
                    <asp:ListItem>Lecture Room 2b</asp:ListItem>
                    <asp:ListItem>Lecture Room 2c</asp:ListItem>
                    <asp:ListItem>Lecture Room 2d</asp:ListItem>
                    <asp:ListItem>Lecture Room 2e </asp:ListItem>
                    <asp:ListItem>Lecture Room 3a</asp:ListItem>
                    <asp:ListItem>Lecture Room 3b</asp:ListItem>
                    <asp:ListItem>Lecture Room 3c</asp:ListItem>
                    <asp:ListItem>Lecture Room 3d</asp:ListItem>
                    <asp:ListItem>Tutorial Room 3a</asp:ListItem>
                    <asp:ListItem>Tutorial Room 3b</asp:ListItem>
                    <asp:ListItem>Tutorial Room 3c</asp:ListItem>
                    <asp:ListItem>Incubation Room</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="Button2" runat="server" ForeColor="Black" OnClick="Button2_Click" Text="Book Now" Width="133px" Height="32px" />
&nbsp;&nbsp;
                <asp:Button ID="BtnReturnHome" runat="server" ForeColor="White" OnClick="BtnReturnHome_Click" Text="Return To HomePage" Width="165px" BackColor="#0066CC" Height="36px" />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</form>
</asp:Content>

