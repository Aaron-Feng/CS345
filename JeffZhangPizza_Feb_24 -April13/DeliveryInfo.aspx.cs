using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeliveryInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Write("<script language=javascript> var agree; agree=confirm('You have to log in first'); window.location='Login.aspx';</script>");

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript> var agree; agree=confirm('Do you want to finish this order?'); window.location='OrderConfirm.aspx?id="+GridView1.SelectedRow.Cells[1].Text+"';</script>");
    }
}