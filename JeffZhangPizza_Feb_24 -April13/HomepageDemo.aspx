<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomepageDemo.aspx.cs" Inherits="HomepageDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>BSUPizza</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/introjs.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/liquid-slider.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/ckeditor_4.5.7_standard/ckeditor/ckeditor.js"></script>
    <style type="text/css">
        footer p {
            color: white;
        }
    </style>
</head>
<body class="has-drawer">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <ul class="nav navbar-nav" id="navBar">
                <li><a href="Home.aspx" data-localize="nav.home">Home</a></li>
                <li><a href="Order.aspx">Order Pizza</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span>User Information</span><span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Registration.aspx">Become a member</a></li>
            </ul>
            <div class="pull-right">
                <a href="#" id="en">English</a>&emsp;
                <a href="#" id="ch">Chinese</a>&emsp;
                <a href="#" id="help" onclick="startIntro();">Help</a>

            </div>
        </nav>

    </header>
    <div id="drawerMenu" class="drawer dw-xs-8 fold">
        <div class="drawer-controls visible-xs-block">
            <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 50px; padding: 0px 10px 0px 10px">≡</a>
        </div>
        <div class="drawer-contents">
            <div class="drawer-heading">
                <h2 class="drawer-title">Menu</h2>
            </div>
            <ul class="drawer-nav">
                <li role="presentation" class="active"><a href="Home.aspx">Home</a></li>
                <li role="presentation"><a href="Order.aspx">Order Pizza</a></li>
                <li role="presentation"><a href="Login.aspx">Login </a></li>
                <li role="presentation"><a href="Registration.aspx">Become a member</a></li>
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                    Also, this page is the sample for presentation.
                </p>
                <p><a href="#" onclick="en.click()">English</a></p>
                <p><a href="#" onclick="ch.click()">Chinese</a></p>
                <p><a href="#" onclick="startIntro();">Help</a></p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Aaron Feng</small>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome to BSU Pizza" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="20pt" ForeColor="#FF3399" data-localize="welcome"></asp:Label>
        <section class="liquid-slider text-center" id="main-slider">
            <div>
                <img src="images/chicago.jpg" />
            </div>
            <div>
                <img src="images/peperoni.jpg" />
            </div>
            <div>
                <img src="images/vegan.jpg" />
            </div>
            <div>
                <img src="images/vegie.jpg" />
            </div>
        </section>
        <footer>
            <p>This page is for BSU Pizza store, you can order variety flavors of pizza on our website.</p>
            <p>Also, this page is the sample for presentation. </p>
            <a href="#" data-toggle="modal" data-target="#contact" role="button">Contact</a>
        </footer>
        <div id="contact" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" aria-label="Close the window" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Contact</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="control-label" for="TextBoxName"></asp:Label>
                        <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBoxContact" runat="server" CssClass="ckeditor" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="modal-footer">
                        <asp:Label runat="server" ID="LabelMessage" ForeColor="Red" Visible="False"></asp:Label>
                        <asp:Button ID="ButtonContact" runat="server" Text="Send" CssClass="btn btn-success" />
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="js/slider/jquery.liquid-slider.min.js"></script>
    <script src="js/jquery.localize.min.js"></script>
    <script src="js/intro.js"></script>
    <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>
</body>
</html>
