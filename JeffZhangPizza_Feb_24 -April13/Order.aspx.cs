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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
    Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");

        }
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
        decimal price = 0;
        string toppings = "";
        double tax = 0.07;
        price += Convert.ToDecimal(DropDownListPizzaSize.SelectedValue);
        for (int i = 0; i < CheckBoxListToppings.Items.Count; i++) {
            if (CheckBoxListToppings.Items[i].Selected) {
                toppings += CheckBoxListToppings.Items[i].Text + ", ";
                price += Convert.ToDecimal(CheckBoxListToppings.Items[i].Value);
            }
        }//close for 
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string qry = "insert into [Order] values (@size, @style,@toppings,@price, @userName)";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@size", DropDownListPizzaSize.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@style", DropDownListPizzaStyle.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@toppings", toppings);
        cmd.Parameters.AddWithValue("@price", price*(decimal)(1+tax));
        cmd.Parameters.AddWithValue("@userName",Session["user"].ToString());
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("OrderSummary.aspx");

    }
}