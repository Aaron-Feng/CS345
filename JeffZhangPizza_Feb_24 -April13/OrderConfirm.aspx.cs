using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ButtonCheckOut_Click(object sender, EventArgs e)
    {
        ShoppingCartUti cart = new ShoppingCartUti();
        cart.ID = Request.QueryString["id"].ToString();
        cart.readRecordById();
        OrderUti order = new OrderUti();
        order.PizzaSize = cart.PizzaSize;
        order.PizzaStyle = cart.PizzaStyle;
        order.Price = cart.Price;
        order.Toppings = cart.Toppings;
        order.UserName = cart.UserName;
        order.insertOrder();
        cart.removeRecord();
        Response.Redirect("Thanks.aspx");
    }


}