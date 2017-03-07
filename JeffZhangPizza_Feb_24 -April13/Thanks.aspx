<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">&nbsp;Thank you so much for the order with us!!<br />
        </span>
        <asp:GridView ID="GridViewThanks" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceThanks">
            <Columns>
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaStyle" HeaderText="PizzaStyle" SortExpression="PizzaStyle" />
                <asp:BoundField DataField="Toppings" HeaderText="Toppings" SortExpression="Toppings" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceThanks" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT [PizzaSize], [PizzaStyle], [Toppings], [Price] FROM [Order] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="ButtonConfirm" runat="server" OnClick="ButtonConfirm_Click" style="font-size: xx-large" Text="Confirm!" />
    
    </div>
    </form>
</body>
</html>
