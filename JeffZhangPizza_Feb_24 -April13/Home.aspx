<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html DOCTYPE!">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>BSUPizza</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/introjs.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
 
</head>
<body>
    <header class="container">
          <nav class="collapse navbar-collapse navbar-inverse " >
            <ul class="nav navbar-nav" style="width=100%">
                <li><a href="Home.aspx" >Home</a></li>
                <li ><a href="Order.aspx"> Make a Order</a></li>
                <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" role="button"  aria-haspopup="ture" aria-expanded="false"> User Information <span class="caret" /></a>
                <ul class="dropdown-menu">
                    <li><a href="BasicUser.aspx"> Basic Information</a></li>
                    <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                </ul>
            </li>
                <li><a href="Login.aspx"> Login </a></li>
                <li> <a href="Registration.aspx"> Become a member</a></li>
			</ul>
  	</nav>
    </header>
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br /><br /><br />
    <div>
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome to BSU Pizza" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="50pt" ForeColor="#FF3399"></asp:Label>
        <br /><br />
        <img src="images/bsulogo.jpg" style="width: 268px; height: 148px" />
    <a name="top"></a>
    </div>
    </form>
    <footer class="menu">
<ul> 
    <li><a href="#top"> Back TO Top</a></li>
    <li><a href="Contact.aspx">Contact US</a></li>


</ul>

    </footer>
</body>
</html>
