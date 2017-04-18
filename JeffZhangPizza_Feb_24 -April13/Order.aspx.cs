using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class Order : System.Web.UI.Page
{
    decimal price = 0;
    protected void updatePrice() {
        price = Convert.ToDecimal(DropDownListPizzaSize.SelectedValue);
        for (int i = 0; i < CheckBoxListToppings.Items.Count; i++)
        {
            if (CheckBoxListToppings.Items[i].Selected)
            {
                price += Convert.ToDecimal(CheckBoxListToppings.Items[i].Value);
            }
        }//close for 
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //    if (Session["user"] == null)
        //    {
        //Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");

        //    }
       updatePrice();
       LabelPrice.Text="Total Price:" + price;
    }
    protected void CheckBoxListToppings_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (CheckBoxListToppings.Items.FindByText("Grilled Chicken").Selected)
        {
            ImageChicken.Visible = true;
        }
        else {
            ImageChicken.Visible = false;
        }

        if (CheckBoxListToppings.Items.FindByText("Pepperoni").Selected)
        {
            ImagePepperoni.Visible = true;
        }
        else {
            ImagePepperoni.Visible = false;
        }
        if (CheckBoxListToppings.Items.FindByText("Steak").Selected)
        {
            ImageSteak.Visible = true;
        }
        else {
            ImageSteak.Visible = false;
        }
    }
    protected void ButtonNext_Click(object sender, EventArgs e)
    {
        updatePrice();
        string toppings = "";
        for (int i = 0; i < CheckBoxListToppings.Items.Count; i++) {
            if (CheckBoxListToppings.Items[i].Selected) {
                toppings += CheckBoxListToppings.Items[i].Text + ", ";          
            }
        }//close for 
        ShoppingCartUti cart = new ShoppingCartUti();
        cart.PizzaSize = DropDownListPizzaSize.SelectedItem.ToString();
        cart.PizzaStyle = DropDownListPizzaStyle.SelectedItem.ToString();
        cart.Price = (double)price*(1.07);
        cart.Toppings = toppings;
        cart.UserName = Session["user"].ToString();
        cart.insertShoppingCart();
        Response.Redirect("OrderConfirm.aspx?id=" + cart.ID);
    }

}