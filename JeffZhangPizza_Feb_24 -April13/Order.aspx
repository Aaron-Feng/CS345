<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .Pizza {z-index:0;position:absolute;
            top: 351px;
            left: 63px;
        }
        .GrilledChicken {z-index:1; position:absolute;
            top: 391px;
            left: 152px;
            width: 179px;
            height: 113px;
        }
        .Peppronia {z-index:2;position:absolute;
            top: 404px;
            left: 157px;
            width: 164px;
            height: 82px;
        }
        .Steak {z-index:3;position:absolute;
            top: 402px;
            left: 169px;
            width: 156px;
            height: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="30pt" ForeColor="#3333FF" Text="Step1:"></asp:Label>
        <asp:DropDownList ID="DropDownListPizzaSize" runat="server" Font-Size="X-Large" Height="49px" Width="224px">
            <asp:ListItem>Select Pizza Size</asp:ListItem>
            <asp:ListItem Value="5">Small</asp:ListItem>
            <asp:ListItem Value="6">Medium</asp:ListItem>
            <asp:ListItem Value="7">Large</asp:ListItem>
            <asp:ListItem Value="8">Extra Large</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="30pt" ForeColor="#3333FF" Text="Step2:"></asp:Label>
        <asp:DropDownList ID="DropDownListPizzaStyle" runat="server" Font-Size="X-Large" Height="49px" Width="224px">
            <asp:ListItem>Select Pizza Style</asp:ListItem>
            <asp:ListItem Value="Sicilian">Sicilian</asp:ListItem>
            <asp:ListItem Value="Deep_Dish">Deep_Dish</asp:ListItem>
            <asp:ListItem Value="Tomato-Pie">Tomato-Pie</asp:ListItem>
            <asp:ListItem Value="Stuffed Crust">Stuffed Crust</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="30pt" ForeColor="#3333FF" Text="Step3: Choose your toppings"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxListToppings" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxListToppings_SelectedIndexChanged">
            <asp:ListItem Value="1">Grilled Chicken</asp:ListItem>
            <asp:ListItem Value="1">Pepperoni</asp:ListItem>
            <asp:ListItem Value="1">Steak</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Image ID="ImageChicken" runat="server" ImageUrl="~/images/GrilledChicken.png" CssClass="GrilledChicken" Visible="False" />
        <asp:Image ID="ImagePizza" runat="server" Height="189px" ImageUrl="~/images/pizza.jpg" Width="355px" CssClass="Pizza" />
        <asp:Image ID="ImagePepperoni" runat="server" ImageUrl="~/images/Pepperoni.png" CssClass="Peppronia" Visible="False" />
        <asp:Image ID="ImageSteak" runat="server" ImageUrl="~/images/Steak.png" CssClass="Steak" Visible="False" />
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <br />
        <br />
        <br />
        <br />
        <br /><br />
        <asp:Button ID="ButtonNext" runat="server" Text="Next" OnClick="ButtonNext_Click" style="font-size: xx-large" />
    </form>
</body>
</html>
