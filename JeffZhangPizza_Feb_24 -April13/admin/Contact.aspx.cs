using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<ContactUti> list_contact = new ContactUti().getContactInfo();
        foreach (ContactUti con in list_contact) {
            ContactList.InnerHtml += "<div class=\"col-xs-2 table-bordered\"><p>" + con.id + "</p></div>";
            ContactList.InnerHtml += "<div class=\"col-xs-2 table-bordered\"><p>" + con.Name + "</p></div>";
            ContactList.InnerHtml += "<div class=\"col-xs-6 table-bordered\"><p>" + con.Content + "</p></div>";
            ContactList.InnerHtml += "<div class=\"col-xs-2 table-bordered\"><p>" + con.Time + "</p></div>";

        }

    }

}