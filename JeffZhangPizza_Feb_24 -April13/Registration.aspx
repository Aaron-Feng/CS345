<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 249px;
            text-align: right;
        }
        .auto-style3 {
            width: 249px;
            font-size: medium;
            text-align: right;
        }
        #Reset {
            font-size: medium;
        }
        .auto-style4 {
            width: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFName" runat="server" Width="200px" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxLName" runat="server" Width="200px" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">User Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="200px" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="User Name is required" ForeColor="Red" ControlToValidate="TextBoxUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEamil" runat="server" Width="200px" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="TextBoxEamil"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="You must enter a valid email address" ControlToValidate="TextBoxEamil" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px" BackColor="#FFFF66">
                        <asp:ListItem>Select a Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Saudi Arabia</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ErrorMessage="Select a Country." InitialValue="Select a Country" ForeColor="Red" ControlToValidate="DropDownListCountry"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="200px" TextMode="Password" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassowrd" runat="server" ErrorMessage="You must enter at least 6 letters with nunmbers" ValidationExpression="[a-zA-Z]\w{5,17}" ForeColor="Red" ControlToValidate="TextBoxPassword"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Width="200px" BorderColor="#3333FF" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="TextBoxConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="CompareValidatorConfirm" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAge" runat="server" Width="200px" BorderColor="#3333FF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ErrorMessage="Age is required" ForeColor="Red" ControlToValidate="TextBoxAge"></asp:RequiredFieldValidator><br />
                    <asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="You must be at 18" MaximumValue="110" MinimumValue="18" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="RadioButtonMale" runat="server" Text="Male" GroupName="Gender" style="font-size: large" />
                    &nbsp; &nbsp;<asp:RadioButton ID="RadioButtonFemale" runat="server" Text="Female" GroupName="Gender" Checked="True" style="font-size: large" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelMessage" runat="server" Font-Size="Large" Text="Welcome"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSubmit" runat="server" style="font-size: medium" Text="Submit" OnClick="ButtonSubmit_Click" />&nbsp; &nbsp;
                    <input id="Reset" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
