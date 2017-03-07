<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderSummary.aspx.cs" Inherits="OrderSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your Order is as below:<br />
        <asp:GridView ID="GridViewOrder" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Order_ID" DataSourceID="SqlDataSourceOrder" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" InsertVisible="False" ReadOnly="True" SortExpression="Order_ID" />
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaStyle" HeaderText="PizzaStyle" SortExpression="PizzaStyle" />
                <asp:BoundField DataField="Toppings" HeaderText="Toppings" SortExpression="Toppings" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
        <asp:SqlDataSource ID="SqlDataSourceOrder" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" SelectCommand="SELECT * FROM [Order] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Total:
        <asp:TextBox ID="TextBoxTotalPrice" runat="server" ReadOnly="True" Width="157px"></asp:TextBox>
    
        <br />
        <br />
        <span class="auto-style2">This is your address:</span><br />
        <asp:GridView ID="GridViewAddress" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAddress" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="GridViewAddress_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Address_Type" HeaderText="Address_Type" SortExpression="Address_Type" />
                <asp:BoundField DataField="Address_Line1" HeaderText="Address_Line1" SortExpression="Address_Line1" />
                <asp:BoundField DataField="Address_Line2" HeaderText="Address_Line2" SortExpression="Address_Line2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAddress" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBRemote %>" InsertCommand="INSERT INTO Delievery_Address(Address_Type, Address_Line1, Address_Line2, City, ZipCode, Phone, UserName) VALUES (@Address_Type, @Address_Line1, @Address_Line2,@City, @ZipCode, @Phone, @UserName)" SelectCommand="SELECT Address_Type, Address_Line1, Address_Line2, City, ZipCode, Phone FROM Delievery_Address" UpdateCommand="UPDATE Delievery_Address SET Address_Line1 =@Address_Line1, Address_Line2 =@Address_Line2, City =@City, ZipCode =@ZipCode, Phone =@Phone where Address_Type=@Address_Type and UserName=@useName;">
            <InsertParameters>
                <asp:Parameter Name="Address_Line1" />
                <asp:Parameter Name="Address_Line2" />
                <asp:Parameter Name="City" />
                <asp:Parameter Name="ZipCode" />
                <asp:Parameter Name="Phone" />
                <asp:SessionParameter Name="UserName" SessionField="user" />
                <asp:Parameter Name="Address_Type" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Address_Line1" />
                <asp:Parameter Name="Address_Line2" />
                <asp:Parameter Name="City" />
                <asp:Parameter Name="ZipCode" />
                <asp:Parameter Name="Phone" />
                <asp:Parameter Name="Address_Type" />
                <asp:SessionParameter Name="useName" SessionField="user" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style1">Enter your address at the below:<br />
        </span>
        <asp:DetailsView ID="DetailsViewAddress" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSourceAddress" DefaultMode="Insert" Height="50px" Width="125px" AutoGenerateEditButton="True">
            <Fields>
                <asp:BoundField DataField="Address_Type" HeaderText="Address_Type" SortExpression="Address_Type" />
                <asp:BoundField DataField="Address_Line1" HeaderText="Address_Line1" SortExpression="Address_Line1" />
                <asp:BoundField DataField="Address_Line2" HeaderText="Address_Line2" SortExpression="Address_Line2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:Button ID="ButtonCheckOut" runat="server" OnClick="ButtonCheckOut_Click" style="font-size: xx-large" Text="CheckOut" />
    
    </div>
    </form>
</body>
</html>
