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
    protected string encryptString(string input)
    {
        MD5 md5 = new MD5CryptoServiceProvider();
        md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(input));
        byte[] result = md5.Hash;
        StringBuilder strBuilder = new StringBuilder();
        for (int i = 0; i < result.Length; i++)
        {
            strBuilder.Append(result[i].ToString("x2"));
        }

        return strBuilder.ToString();
    }
    protected bool existUser()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string checkUser = "select * from Customer where UserName=@userName";
        SqlCommand comd = new SqlCommand(checkUser, conn);
        comd.Parameters.AddWithValue("@userName", TextBoxUserName.Text);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            
            if (dr["Password"].ToString() == encryptString(TextBoxPassword.Text))
            {
                LabelMessage.Text = "Welcome back!!";
                Session["user"] = TextBoxUserName.Text;
                LabelMessage.ForeColor = Color.Red;
                dr.Close();
                conn.Close();
                return true;

            }
        }
            dr.Close();
            conn.Close();
            return false;

        
    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        if (this.existUser())
        {
            Response.Redirect("Home.aspx");
            
        }
        else {
            LabelMessage.Enabled = true;
            LabelMessage.Visible = false;
            LabelMessage.Text = "Your Passowrd is in correct!";
            LabelMessage.ForeColor = Color.Red;
            LinkButtonForgotPassword.Enabled = true;
            LinkButtonForgotPassword.Visible = true;
        }
    }
}