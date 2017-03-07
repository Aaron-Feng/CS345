<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeliveryInfo.aspx.cs" Inherits="DeliveryInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Delievery Information:</span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDelivery" CssClass="auto-style1">
            <Columns>
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaStyle" HeaderText="PizzaStyle" SortExpression="PizzaStyle" />
                <asp:BoundField DataField="Toppings" HeaderText="Toppings" SortExpression="Toppings" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDelivery" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT [PizzaSize], [PizzaStyle], [Toppings], [Price] FROM [Order] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
