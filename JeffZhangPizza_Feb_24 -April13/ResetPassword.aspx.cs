using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
public partial class ResetPassword : System.Web.UI.Page
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
    protected void setNewPassword() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string updateString = "update Customer set Customer.Password=@password where Customer.UserName=@userName";
        SqlCommand comd = new SqlCommand(updateString, conn);
        comd.Parameters.AddWithValue("@userName", TextBoxUserName.Text);
        //PasswordEnvrypt encrypt = new PasswordEnvrypt();
        comd.Parameters.AddWithValue("@password", encryptString("m12345"));
        comd.ExecuteNonQuery();
        conn.Close();
    
    }
    protected void ButtonResetPassword_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string selectionString = "select * from Customer where Customer.UserName=@userName";
        SqlCommand comd = new SqlCommand(selectionString, conn);
        comd.Parameters.AddWithValue("@userName", TextBoxUserName.Text);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows) {
            if (dr["Email"].ToString() == TextBoxEmail.Text)
            {
                this.setNewPassword();
                LabelMessage.Visible = true;
                LabelMessage.Text = "Your password has been reset as m12345";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
                conn.Close();

            }
            else {
                LabelMessage.Visible = true;
                LabelMessage.Text = "Your Email or UserName are not correct!!";
                LabelMessage.ForeColor = System.Drawing.Color.Red;
                dr.Close();
                conn.Close();
            }
        }
        dr.Close();
        conn.Close();
        //Monday

    }

    
}