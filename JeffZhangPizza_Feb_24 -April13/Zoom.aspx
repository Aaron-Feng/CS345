<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zoom.aspx.cs" Inherits="Zoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="js/jqzoom_ev-2.3/css/jquery.jqzoom.css" rel="stylesheet" />
    <script src="js/jqzoom_ev-2.3/js/jquery-1.6.js"></script>
    <script src="js/jqzoom_ev-2.3/js/jquery.jqzoom-core.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
                /* simple call 
            $('.MYCLASS').jqzoom();*/
           
              /* more complex call*/
                var options = {  
                  zoomType: 'standard',  
                  lens:true,  
                  preloadImages: true,  
                  alwaysOn:false,  
                  zoomWidth: 600,  
                  zoomHeight: 350,  
                  xOffset:90,  
                  yOffset:30,  
                  position:'left'  
                  //...MORE OPTIONS  
               };
  
               $('.MYCLASS').jqzoom(options); 
        });
</script>

</head>
<body>
    <a href="images/pizza_big.jpg" class="MYCLASS" title="BSUPizza">
        <img src="images/pizza_small.jpg" title=" Image pizza" />

    </a>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
