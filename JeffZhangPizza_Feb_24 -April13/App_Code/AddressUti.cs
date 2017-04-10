using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AddressUti
/// </summary>
public class AddressUti
{
    public string ID { get; set; }
    public string UserName { get; set; }
    public string AddressType { get; set; }
    public string AddressLine1 { get; set; }
    public string AddressLine2 { get; set; }
    public string ZipCode { get; set; }
    public string Phone { get; set; }

    public AddressUti()
    {
    }
    public void insertAddress() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string qry = "insert into [Address] values (@UserName, @AddressType,@AddressLine1,@AddressLine2, @ZipCode,@Phone) select @@identity";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@AddressType", AddressType);
        cmd.Parameters.AddWithValue("@AddressLine1", AddressLine1);
        cmd.Parameters.AddWithValue("@AddressLine2", AddressLine2);
        cmd.Parameters.AddWithValue("@ZipCode", ZipCode);
        cmd.Parameters.AddWithValue("@Phone", Phone);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        ID = dr[0].ToString();
        dr.Close();
        conn.Close();
    }
    public void selectAddress() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string qry = "select * from [Address] where (ID=@ID)";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@ID", ID);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        UserName = dr[1].ToString();
        AddressType = dr[2].ToString();
        AddressLine1 = dr[3].ToString();
        AddressLine2 = dr[4].ToString();
        ZipCode = dr[5].ToString();
        Phone = dr[6].ToString();
        dr.Close();
        conn.Close();
    }
}