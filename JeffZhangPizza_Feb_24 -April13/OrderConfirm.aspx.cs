using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderConfirm : System.Web.UI.Page
{
    string addressId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");
        }
    }
    protected void ButtonCheckOut_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(addressId)) {
            AddressUti adr = new AddressUti();
            adr.AddressType = TextBoxAddressType.Text;
            adr.UserName = Session["user"].ToString();
            adr.Phone = TextBoxPhone.Text;
            adr.AddressLine1 = TextBoxAddressLine1.Text;
            adr.AddressLine2 = TextBoxAddressLine2.Text;
            adr.ZipCode = TextBoxZipCode.Text;
            adr.insertAddress();
            addressId = adr.ID;
        }
        ShoppingCartUti cart = new ShoppingCartUti();
        cart.ID = Request.QueryString["id"].ToString();
        cart.readRecordById();
        OrderUti order = new OrderUti();
        order.PizzaSize = cart.PizzaSize;
        order.PizzaStyle = cart.PizzaStyle;
        order.Price = cart.Price;
        order.Toppings = cart.Toppings;
        order.UserName = cart.UserName;
        order.AddressId = addressId;
        order.insertOrder();
        cart.removeRecord();
        Response.Redirect("Thanks.aspx");
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        AddressUti adr = new AddressUti();
        adr.ID = DropDownList1.SelectedValue;
        adr.selectAddress();
        TextBoxAddressType.Text = adr.AddressType;
        TextBoxAddressLine1.Text = adr.AddressLine1;
        TextBoxAddressLine2.Text = adr.AddressLine2;
        TextBoxZipCode.Text = adr.ZipCode;
        TextBoxPhone.Text = adr.Phone;
        addressId = adr.ID;
    }
}