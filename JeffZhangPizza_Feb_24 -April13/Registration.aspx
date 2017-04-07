<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Registration</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        form {
            color: white;
        }
    </style>
</head>
<body class="has-drawer container">
    <header class="container">

        <nav class="collapse navbar-collapse navbar-inverse">
            <img class="logo" src="images/bsulogo.jpg" alt="bsulogo" />
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Order.aspx">Make a Order</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User Information <span class="caret" /></a>
                    <ul class="dropdown-menu">
                        <li><a href="BasicUser.aspx">Basic Information</a></li>
                        <li><a href="DeliveryInfo.aspx">Delivery Information</a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login </a></li>
                <li><a href="Registration.aspx">Become a member</a></li>
            </ul>
        </nav>
    </header>
    <div id="drawerMenu" class="drawer dw-xs-8 fold">
        <div class="drawer-controls visible-xs-block">
            <a href="#drawerMenu" data-toggle="drawer" class="btn btn-primary btn-lg" style="font-size: 50px; padding: 0px 10px 0px 10px">≡</a>
        </div>
        <div class="drawer-contents">
            <div class="drawer-heading">
                <h2 class="drawer-title">Menu</h2>
            </div>
            <ul class="drawer-nav">
                <li role="presentation" class="active"><a href="Home.aspx">Home</a></li>
                <li role="presentation"><a href="Order.aspx">Order Pizza</a></li>
            </ul>
            <div class="drawer-body">
                <p>
                    This page is for BSU Pizza store, you can order variety flavors of pizza on our website.
                    Also, this page is the sample for presentation.
                </p>
            </div>
            <div class="drawer-footer locked text-center">
                <small>&copy; Aaron Feng</small>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <form runat="server" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxFName">First Name</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxFName" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxLName">Last Name</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxLName" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="First Name is required" ForeColor="Red" ControlToValidate="TextBoxLName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxUserName">User Name</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="User Name is required" ForeColor="Red" ControlToValidate="TextBoxUserName"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxEmail">E-mail</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxEmail" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="You must enter a valid email address" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label" for="DropDownListCountry">Country</label>
            <div class="col-sm-4">
                <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control">
                    <asp:ListItem>Select a Country</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ErrorMessage="Select a Country." InitialValue="Select a Country" ForeColor="Red" ControlToValidate="DropDownListCountry"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxPassword">Password</label> 
        <div class="col-sm-4">
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" class="form-control" ></asp:TextBox>
        </div>
            <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassowrd" runat="server" ErrorMessage="You must enter at least 6 letters with nunmbers" ValidationExpression="[a-zA-Z]\w{5,17}" ForeColor="Red" ControlToValidate="TextBoxPassword"></asp:RegularExpressionValidator>
       </div> 
           </div> 
             <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxConfirmPassword">Confirm Password</label>
               <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
               </div>
            <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="TextBoxConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="CompareValidatorConfirm" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
            </div> 
           </div> 
        <div class="form-group">
            <label class="col-sm-4 control-label" for="TextBoxAge">Age</label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxAge" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ErrorMessage="Age is required" ForeColor="Red" ControlToValidate="TextBoxAge"></asp:RequiredFieldValidator><br />
                <asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="You must be at 18" MaximumValue="110" MinimumValue="18" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            </div> 
           </div> 
        <div class="form-group">
            <label class="col-sm-4 control-label" for="RadioButtonGroup">Gender</label>
            <div class="col-sm-4 radio-inline" id="RadioButtonGroup">
            <asp:RadioButton ID="RadioButtonMale" runat="server" Text="Male" GroupName="Gender" Style="font-size: large" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:RadioButton ID="RadioButtonFemale" runat="server" Text="Female" GroupName="Gender" Checked="True" Style="font-size: large" />
            </div>
            <div class="col-sm-4">
       </div> 
           </div> 
            <div class="form-group">
        <asp:Label class="col-sm-4 control-label" runat="server" for="SubmitButtonGroup" ID="LabelMessage">Welcome</asp:Label>
            <div class="col-sm-4" id="SubmitButtonGroup">
      <asp:Button ID="ButtonSubmit" runat="server" class="btn btn-primary" OnClick="ButtonSubmit_Click" Text="Submit"/>&nbsp; &nbsp;
                <input type="reset" class="btn btn-warning" />
            </div>
</div> 
    </form>
    <script src="js/drawer.js"></script>
    <script> $('#drawerMenu').drawer({ toggle: false });</script>
</body>
</html>
