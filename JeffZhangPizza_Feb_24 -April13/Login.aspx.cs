using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        CustomerUti customer = new CustomerUti();
        customer.UserName = TextBoxUserName.Text;
        customer.Password = TextBoxPassword.Text;
        if (customer.checkPassword())
        {
            Session["user"] = TextBoxUserName.Text;
            LabelMessage.Enabled = true;
            LabelMessage.Visible = true;
            LabelMessage.Text = "Welcome back!";
            LabelMessage.ForeColor = Color.Red;
            string strRedirectPage = "Home.aspx";
            string strRedirectTime = "2";
            string strRedirect = string.Format("{0};url={1}", strRedirectTime, strRedirectPage);
            Response.AddHeader("refresh", strRedirect);
        }
        else {
            LabelMessage.Enabled = true;
            LabelMessage.Visible = true;
            LabelMessage.Text = "Your Username Or Passowrd is in correct!";
            LabelMessage.ForeColor = Color.Red;
            LinkButtonForgotPassword.Enabled = true;
            LinkButtonForgotPassword.Visible = true;
        }
    }
}