using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrderUti
/// </summary>
public class OrderUti
{
    public string OrderId { get; set; }
    public string UserName { get; set; }
    public string PizzaSize { get; set; }
    public string PizzaStyle { get; set; }
    public string Toppings { get; set; }
    public double Price { get; set; }
    public string OrderTime { get; set; }
    public string AddressId { get; set; }
    public OrderUti()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void insertOrder() {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PizzaDBRemote"].ConnectionString);
        conn.Open();
        string qry = "insert into [Order] (UserName, PizzaSize,PizzaStyle,Toppings,Price,AddressId) values (@UserName, @PizzaSize,@PizzaStyle,@Toppings, @Price,@AddressId)";
        SqlCommand cmd = new SqlCommand(qry, conn);
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@PizzaSize", PizzaSize);
        cmd.Parameters.AddWithValue("@PizzaStyle", PizzaStyle);
        cmd.Parameters.AddWithValue("@Toppings", Toppings);
        cmd.Parameters.AddWithValue("@Price", Price);
        cmd.Parameters.AddWithValue("@AddressId", AddressId);
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}