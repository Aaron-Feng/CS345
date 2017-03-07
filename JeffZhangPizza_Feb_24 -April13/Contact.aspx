<%@ Page Language="C#"  ValidateRequest="false" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/ckeditor_4.5.7_standard/ckeditor/ckeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBoxContact" runat="server" CssClass="ckeditor" TextMode="MultiLine" ></asp:TextBox>
        <br />
        <br />
   
    
        <asp:Button ID="ButtonContact" runat="server" OnClick="ButtonContact_Click" Text="Contact" />
   
    
    </div>
    </form>
</body>
</html>
