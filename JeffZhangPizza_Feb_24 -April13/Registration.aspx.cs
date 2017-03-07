using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
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
    protected bool checkRecord() {//did on March 4

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string checkUser = "select * from Customer where UserName=@userName";
        SqlCommand comd = new SqlCommand(checkUser,conn);
        comd.Parameters.AddWithValue("@userName", TextBoxUserName.Text);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows) {
            LabelMessage.Text = "User already exists!!";
            LabelMessage.ForeColor = Color.Red;

            dr.Close();
            conn.Close();
            return true;
        }
        dr.Close();
        conn.Close();
        return false;
    }//ending checkRecord()
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        ////do next time after spring break
        if (!this.checkRecord()) {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
                conn.Open();

                string insertQuery = "insert into Customer(UserName, FName, LName, Email, Country, Password, Age, Gender ) values (@UserName, @FName, @LName, @Email, @Country, @Password, @Age, @Gender )";
                SqlCommand comd = new SqlCommand(insertQuery, conn);

                comd.Parameters.AddWithValue("@UserName", TextBoxUserName.Text);
                comd.Parameters.AddWithValue("@Fname", TextBoxFName.Text);
                comd.Parameters.AddWithValue("@LName", TextBoxLName.Text);
                comd.Parameters.AddWithValue("@Email", TextBoxEamil.Text);
                comd.Parameters.AddWithValue("@Country", DropDownListCountry.SelectedItem.ToString());
               

                comd.Parameters.AddWithValue("@Password", encryptString(TextBoxPassword.Text));
                comd.Parameters.AddWithValue("@Age", TextBoxAge.Text);
                if (RadioButtonFemale.Checked)
                {
                    comd.Parameters.AddWithValue("@Gender", 'F');
                }
                else
                {
                    comd.Parameters.AddWithValue("@Gender", 'M');
                }
                comd.ExecuteNonQuery();
                Response.Redirect("CustomerDisplay.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());

            }//ending check record
    }
    }//ending ButtonSubmit_Click method
}