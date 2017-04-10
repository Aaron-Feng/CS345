using System;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        CustomerUti customer = new CustomerUti();
        customer.UserName = TextBoxUserName.Text;
        customer.FName = TextBoxFName.Text;
        customer.LName = TextBoxLName.Text;
        customer.Email = TextBoxEmail.Text;
        customer.Country = DropDownListCountry.SelectedItem.ToString();
        customer.Password = TextBoxPassword.Text;
        customer.Age = TextBoxAge.Text;
        if (RadioButtonFemale.Checked)
        {
            customer.Gender = 'F';
        }
        else
        {
            customer.Gender = 'M';
        }
        if (customer.userExist()=="") {
            try
            {
                customer.insertData();
                string strRedirectPage = "Login.aspx";
                string strRedirectTime = "2";
                string strRedirect = string.Format("{0};url={1}", strRedirectTime, strRedirectPage);
                Response.AddHeader("refresh", strRedirect);
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());

            }//ending check record
        }
    }//ending ButtonSubmit_Click method
}