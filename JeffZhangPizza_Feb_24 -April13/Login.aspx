<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <style type="text/css">
        #Login {
            width:400px;
            margin:auto;
            margin-top:5%;
        }
        #Content {
            margin-left:20%;
        }
        legend {
            background-color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="Login">
    <fieldset>
        <legend>
            Login
        </legend>
        <div id="Cotent">
            <asp:Label ID="LabeluserName" runat="server" Text="User Name">
                            </asp:Label> &nbsp;
            <asp:TextBox ID="TextBoxUserName" runat="server" Text="">

            </asp:TextBox>
        
        <br />
        Password&nbsp;&nbsp;<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
        <asp:Label ID="LabelMessage" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:LinkButton ID="LinkButtonForgotPassword" runat="server" Enabled="False" Visible="False" PostBackUrl="~/ResetPassword.aspx">Forgot Password</asp:LinkButton>
        </div>
    </fieldset>
    </div>
    </form>
</body>
</html>
