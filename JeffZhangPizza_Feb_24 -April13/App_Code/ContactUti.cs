using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ContactUti
/// </summary>
public class ContactUti
{
    public string id { get; set; }
    public string Name { get; set; }
    public string Content{ get; set; }
    public string Time { get; set; }

    public ContactUti()
    {
    }
    public List<ContactUti> getContactInfo() {
        List<ContactUti> list_contact = new List<ContactUti>();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string qry = "select * from ContactLog order by Time";
        SqlCommand comd = new SqlCommand(qry, conn);
        SqlDataReader dr = comd.ExecuteReader();
        while (dr.Read()) {
            ContactUti contact = new ContactUti();
            contact.id = dr[0].ToString();
            contact.Name = dr[1].ToString();
            contact.Content = dr[2].ToString();
            contact.Time = dr[3].ToString();
            list_contact.Add(contact);
        }
        return list_contact;
    }
    public void insertLog() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into ContactLog(Name, Content) values (@Name, @Content)";
        SqlCommand comd = new SqlCommand(insertQuery, conn);
        comd.Parameters.AddWithValue("@Name", Name);
        comd.Parameters.AddWithValue("@Content", Content);
        comd.ExecuteNonQuery();
        conn.Close();
    }
}