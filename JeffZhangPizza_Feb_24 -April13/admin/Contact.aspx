<%@ Page Language="C#"  ValidateRequest="false" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Contact List</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bsuPizza.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style type="text/css">
        body {
            color:white;
        }
        p {
            margin:0;
        }
        ul { margin:0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
        <br />
        <h1 class="text-center">Contact Log List</h1>
        <br />
        <div class="row table-bordered" runat="server" id="ContactList">
            <div class="col-xs-2 table-bordered"><h3 class="text-center">ID</h3></div>
             <div class="col-xs-2 table-bordered"><h3 class="text-center">Name</h3></div>
             <div class="col-xs-6 table-bordered"><h3 class="text-center">Content</h3></div>
             <div class="col-xs-2 table-bordered"><h3 class="text-center">Time</h3></div>

        </div>
    </div>
    </form>
</body>
</html>
