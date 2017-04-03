<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
   <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

    <style type="text/css">
        form {
            color:white;
        }
    </style>
</head>
<body>
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
        </nav>
    </header>


    <div class="container">
    <form id="form1" runat="server" class="form-horizontal col-sm-offset-3 col-md-offset-3 col-sm-6">
        <div class="form row">  
                <h3>Login to your account</h3>  
                <div class="col-sm-9 col-md-9">  
                    <div class="form-group">
                       <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <asp:TextBox ID="TextBoxUserName" runat="server" Text="" class="form-control"></asp:TextBox>
                           </div>
                    </div>  
                    <div class="form-group">  
                            <div class="input-group"><span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                           <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                                </div>
                    </div>  
                    <div class="form-group">  
                        <label class="checkbox">  
                            <input type="checkbox" name="remember" value="1"/> Remember me  
                        </label>  
                        <hr />  
                        <a href="Registration.aspx">Create an account</a>  
                    </div>  
                    <div class="form-group">  
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" class="btn btn-success"/>
                        <asp:Label ID="LabelMessage" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:LinkButton ID="LinkButtonForgotPassword" runat="server" Enabled="False" Visible="False" PostBackUrl="~/ResetPassword.aspx">Forgot Password</asp:LinkButton>
                    </div>  
                </div>
            </div>
    </form>  
        </div> 
    </body>
    </html>
  