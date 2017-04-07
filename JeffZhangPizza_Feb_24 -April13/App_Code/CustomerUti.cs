using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerUtli
/// </summary>
public class CustomerUti
{
    public string UserName { get; set; }
    public string FName { get; set; }
    public string LName { get; set; }
    public string Email { get; set; }
    public string Country { get; set; }
    public string Password { get; set; }
    public string Age { get; set; }
    public char Gender { get; set; }

    public CustomerUti()
    {

    }
    public void insertData() {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();

        string insertQuery = "insert into Customer(UserName, FName, LName, Email, Country, Password, Age, Gender) values (@UserName, @FName, @LName, @Email, @Country, @Password, @Age, @Gender)";
        SqlCommand comd = new SqlCommand(insertQuery, conn);

        comd.Parameters.AddWithValue("@UserName", UserName);
        comd.Parameters.AddWithValue("@Fname", FName);
        comd.Parameters.AddWithValue("@LName", LName);
        comd.Parameters.AddWithValue("@Email", Email);
        comd.Parameters.AddWithValue("@Country", Country);
        comd.Parameters.AddWithValue("@Password", PasswordEncrypt.encryptString(Password));
        comd.Parameters.AddWithValue("@Age", Convert.ToInt32(Age));
        comd.Parameters.AddWithValue("@Gender", Gender);
        comd.ExecuteNonQuery();
        conn.Close();
    }
    public string userExist() {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string checkUser = "select [Password] from Customer where UserName=@userName";
        SqlCommand comd = new SqlCommand(checkUser, conn);
        comd.Parameters.AddWithValue("@userName", UserName);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            string result = dr[0].ToString();
            dr.Close();
            conn.Close();
            return result;
        }
        dr.Close();
        conn.Close();
        return "";
    }
    public Boolean checkPassword() {
        string passwordMD5 = userExist();
        if (passwordMD5.Equals(PasswordEncrypt.encryptString(Password)))
        {
            return true;
        }
        else { return false; }
    }
    public CustomerUti getUser(string userName) {
        CustomerUti customer = new CustomerUti();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string checkUser = "select (UserName, FName, LName, Email, Country, Password, Age, Gender) from Customer where UserName=@userName";
        SqlCommand comd = new SqlCommand(checkUser, conn);
        comd.Parameters.AddWithValue("@userName", userName);
        SqlDataReader dr = comd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            customer.UserName = dr[0].ToString();
            customer.FName = dr[1].ToString();
            customer.LName = dr[2].ToString();
            customer.Email = dr[3].ToString();
            customer.Country = dr[4].ToString();
            customer.Password = dr[5].ToString();
            customer.Age = dr[6].ToString();
            customer.Gender = dr[7].ToString().ToCharArray()[0];
        }
        dr.Close();
        conn.Close();
        return customer;
}
    public void resetPassword(string newpwd) {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string checkUser = "update Customer set Customer.Password = @password where Customer.UserName = @userName";
        SqlCommand comd = new SqlCommand(checkUser, conn);
        comd.Parameters.AddWithValue("@userName", UserName);
        comd.Parameters.AddWithValue("@password", PasswordEncrypt.encryptString(newpwd));
        comd.ExecuteNonQuery();
        conn.Close();
    }

}