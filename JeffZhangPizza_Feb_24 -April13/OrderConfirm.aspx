<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderConfirm.aspx.cs" Inherits="OrderConfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Order Confirm</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>form {
        color:white;
        }</style>
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
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Aaron Feng</small>
            </div>
        </div>
    </div>
    <div class="container">
    <form id="form1" class="form-horizontal" runat="server">
    <br />
        <br />
        <br />
        <br />
        <div class="row">
        <div class="col-sm-offset-3">
            <asp:Label ID="Label2" runat="server" Text="Your Shopping Cart is showing below:" Font-Size="X-Large"></asp:Label></div>
            </div>
            <div class="row">
        <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceOrder" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" CssClass="col-sm-offset-3" Font-Size="X-Large">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaStyle" HeaderText="PizzaStyle" SortExpression="PizzaStyle" />
                <asp:BoundField DataField="Toppings" HeaderText="Toppings" SortExpression="Toppings" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </div>
        <asp:SqlDataSource ID="SqlDataSourceOrder" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT [UserName], [PizzaSize], [PizzaStyle], [Toppings], [Price] FROM [ShoppingCart] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="AddressType:" CssClass="col-sm-4 control-label" for="TextBoxAddressType"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressType" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="AddressType" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=SQL5016.SmarterASP.NET;Initial Catalog=DB_9BC2B3_zfeng;User ID=DB_9BC2B3_zfeng_admin;Password=Fzy755214" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [AddressType], [ID] FROM [Address] WHERE ([UserName] = @UserName)">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="user" Name="UserName" Type="String"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                        </div>
                </div>
                <div class="form-group"><asp:Label ID="Label3" runat="server" Text="AddressLine1:" CssClass="control-label col-sm-4" for="TextBoxAddressLine1"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressLine1" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4"></div>
                </div>
                             <div class="form-group"><asp:Label ID="Label4" runat="server" Text="AddressLine2:" CssClass="control-label col-sm-4" for="TextBoxAddressLine2"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxAddressLine2" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
                     <div class="form-group"><asp:Label ID="Label5" runat="server" Text="ZipCode:" CssClass="control-label col-sm-4" for="TextBoxZipCode"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxZipCode" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4"></div>
                </div>
                     <div class="form-group"><asp:Label ID="Label6" runat="server" Text="Phone:" CssClass="control-label col-sm-4" for="TextBoxPhone"></asp:Label>
                    <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxPhone" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    <div class="col-sm-4"></div>
                </div>
    <div class="col-sm-offset-3">
        <asp:Button ID="ButtonCheckOut" runat="server" OnClick="ButtonCheckOut_Click" class="btn btn-primary btn-lg" Text="CheckOut" />
        </div>
    </form>
            </div>
    <script src="js/drawer.js"></script>
    <script>$('#drawerMenu').drawer({ toggle: false });</script>
</body>
</html>
