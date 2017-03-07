using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double price = 0;
        for (int i = 0; i < GridViewOrder.Rows.Count; i++) {
            price +=
               Convert.ToDouble(GridViewOrder.Rows[i].Cells[4].Text);

        }
        TextBoxTotalPrice.Text = price.ToString();
    }
    protected void ButtonCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Thanks.aspx");
    }


    protected void GridViewAddress_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsViewAddress.ChangeMode(DetailsViewMode.ReadOnly);
        DetailsViewAddress.PageIndex = GridViewAddress.SelectedIndex;
    }
}