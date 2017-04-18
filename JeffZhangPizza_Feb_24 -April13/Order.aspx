<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Order</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        form {
            color: white;
        }
        .Pizza {
            position:absolute;
            z-index:0;
            width:450px;
            top:-50px;
        }
        .GrilledChicken {
        position:absolute;
        z-index:1;
        width:350px;
        left:50px;
        }
        .Pepproni {
            position:absolute;
            z-index:2;
                    width:300px;
        left:100px;
        top:50px;
        }
        .Steak {
            position:absolute;
            z-index:3;
                    width:350px;
                    left:50px;
                    top:60px;
        }
    </style>

</head>
<body class="has-drawer container">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Order.aspx">Make a Order</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Information <span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Registration.aspx">Become a member</a></li>
            </ul>
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
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                    Also, this page is the sample for presentation.
                </p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Aaron Feng</small>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 hidden-sm hidden-xs">
        <asp:Image ID="ImagePizza" runat="server" ImageUrl="~/images/pizza.jpg" CssClass="Pizza" />
        <asp:Image ID="ImageChicken" runat="server" ImageUrl="~/images/GrilledChicken.png" CssClass="GrilledChicken" Visible="False" />
        <asp:Image ID="ImagePepperoni" runat="server" ImageUrl="~/images/Pepperoni.png" CssClass="Pepproni" Visible="False" />
        <asp:Image ID="ImageSteak" runat="server" ImageUrl="~/images/Steak.png" CssClass="Steak" Visible="False" />
                <asp:Label id="LabelPrice" runat="server" style="position:absolute; left:150px; top:350px" Font-Size="16pt" ForeColor="White"></asp:Label>
            </div>
            <div class="col-md-6">
                 <form runat="server" class="form-horizontal">
                     <div class="form-group">
        <asp:Label ID="Label1" runat="server" class="control-label col-sm-4" Text="Choose Pizza Size:"></asp:Label>
                     <div class="col-sm-8">
        <asp:DropDownList ID="DropDownListPizzaSize" runat="server" class="form-control" AutoPostBack="True">
            <asp:ListItem Value="5" Selected="True">Small</asp:ListItem>
            <asp:ListItem Value="6">Medium</asp:ListItem>
            <asp:ListItem Value="7">Large</asp:ListItem>
            <asp:ListItem Value="8">Extra Large</asp:ListItem>
        </asp:DropDownList>
                         </div>
                         </div>
                       <div class="form-group">
        <asp:Label ID="Label2" runat="server" class="control-label col-sm-4" Text="Choose Pizza Style:"></asp:Label>
                            <div class="col-sm-8">
        <asp:DropDownList ID="DropDownListPizzaStyle" runat="server" class="form-control">
            <asp:ListItem Value="Sicilian">Sicilian</asp:ListItem>
            <asp:ListItem Value="Deep_Dish">Deep_Dish</asp:ListItem>
            <asp:ListItem Value="Tomato-Pie">Tomato-Pie</asp:ListItem>
            <asp:ListItem Value="Stuffed Crust">Stuffed Crust</asp:ListItem>
        </asp:DropDownList>
    </div>
                         </div>
        <asp:Label ID="Label3" runat="server" class="control-label col-sm-4" Text="Choose Toppings:"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxListToppings" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxListToppings_SelectedIndexChanged" ForeColor="White">
            <asp:ListItem Value="1">Grilled Chicken</asp:ListItem>
            <asp:ListItem Value="1">Pepperoni</asp:ListItem>
            <asp:ListItem Value="1">Steak</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="ButtonNext" runat="server" Text="Order" OnClick="ButtonNext_Click" class="btn btn-lg btn-primary col-sm-offset-4" />
    </form>
            </div>
        </div>
    </div>
       <script src="js/drawer.js"></script>
    <script src="js/bsuPizza.js"></script>
</body>
</html>
