<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

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
        form {
        color:white;
        }
    </style>
</head>
<body class="has-drawer">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <ul class="nav navbar-nav" id="navBar">
                <li><a href="Home.aspx" data-localize="nav.home">Home</a></li>
                <li><a href="Order.aspx" data-localize="nav.order">Order Pizza</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-localize="nav.userInfo">User Information</span><span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx" data-localize="nav.userBasic">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx" data-localize="nav.userDelivery">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx" data-localize="nav.login">Login </a></li>
                <li><a href="Registration.aspx" data-localize="nav.register">Become a member</a></li>
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
                <h2 class="drawer-title" data-localize="menu.title">Menu</h2>
            </div>
            <ul class="drawer-nav">
                <li role="presentation" class="active"><a href="Home.aspx" data-localize="menu.home">Home</a></li>
                <li role="presentation"><a href="Order.aspx" data-localize="menu.order">Order Pizza</a></li>
                <li role="presentation"><a href="Login.aspx" data-localize="menu.login">Login </a></li>
                <li role="presentation"><a href="Registration.aspx" data-localize="menu.register">Become a member</a></li>
            </ul>
            <div class="drawer-body">
                <p data-localize="menu.body">
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
    <div class="container">
        <br /><br /><br /><br />
        <form id="form1" runat="server" class="form-horizontal">
           <div class="form-group"><asp:Label ID="Label3" runat="server" Text="UserName:" CssClass="control-label col-sm-4" for="TextBoxUserName"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxUserName" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Enter your username" ControlToValidate="TextBoxUserName" ForeColor="Red"></asp:RequiredFieldValidator></div>
                </div>
                             <div class="form-group"><asp:Label ID="Label4" runat="server" Text="Email:" CssClass="control-label col-sm-4" for="TextBoxEmail"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxEmail" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter your email" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator></div>
                </div>
            <div class="form-group">
                <asp:Label ID="LabelMessage" runat="server" Text="" CssClass="col-sm-4 control-label" for="ButtonResetPassword"></asp:Label>
                <asp:Button ID="ButtonResetPassword" runat="server" class="btn btn-primary btn-lg" Text="NewPassword" OnClick="ButtonResetPassword_Click"/></div>
        </form>
    </div>
    <script src="js/jquery.localize.min.js"></script>
    <script src="js/intro.js"></script>
    <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>
</body>
</html>
