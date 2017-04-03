<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderConfirm.aspx.cs" Inherits="OrderConfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirm</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your Shopping Cart is showing below:<br />
        <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceOrder" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
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
        <asp:SqlDataSource ID="SqlDataSourceOrder" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT [UserName], [PizzaSize], [PizzaStyle], [Toppings], [Price] FROM [ShoppingCart] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <span class="auto-style1">Enter your address at the below or Select one:<br />
        </span>
        <asp:DetailsView ID="DetailsViewAddress" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSourceAddress" DefaultMode="Insert" Height="50px" Width="125px" AutoGenerateEditButton="True">
            <Fields>
                <asp:BoundField DataField="AddressType" HeaderText="AddressType" SortExpression="AddressType" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridViewAddress" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAddress" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="GridViewAddress_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="AddressType" HeaderText="AddressType" SortExpression="AddressType" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAddress" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT [AddressType], [AddressLine1], [AddressLine2], [ZipCode], [Phone] FROM [Address] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="ButtonCheckOut" runat="server" OnClick="ButtonCheckOut_Click" style="font-size: xx-large" Text="CheckOut" />
    
    </div>
    </form>
</body>
</html>
