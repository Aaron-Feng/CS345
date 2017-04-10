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
    
        <span class="auto-style1">ShoppingCart Information:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDelivery" CssClass="auto-style1" DataKeyNames="Id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaStyle" HeaderText="PizzaStyle" SortExpression="PizzaStyle" />
                <asp:BoundField DataField="Toppings" HeaderText="Toppings" SortExpression="Toppings" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        </span>
        <asp:SqlDataSource ID="SqlDataSourceDelivery" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT * FROM [ShoppingCart] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <span class="auto-style1">
        <br />
        <br />
        Address Information:</span><br />
    
    </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="AddressType" HeaderText="AddressType" SortExpression="AddressType" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=SQL5016.SmarterASP.NET;Initial Catalog=DB_9BC2B3_zfeng;User ID=DB_9BC2B3_zfeng_admin;Password=Fzy755214" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Address] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
