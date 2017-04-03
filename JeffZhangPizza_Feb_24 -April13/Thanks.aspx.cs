using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thanks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
        smtpClient.UseDefaultCredentials = true;
        smtpClient.Credentials = new System.Net.NetworkCredential("zfeng@bsu.edu", "Fzy755214");

        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.EnableSsl = true;
        MailMessage mail = new MailMessage();

        //Setting From , To and CC
        mail.From = new MailAddress("zfeng@bsu.edu","Test Mail", System.Text.Encoding.UTF8);
        mail.To.Add(new MailAddress("zfeng@bsu.edu"));
        mail.CC.Add(new MailAddress("01y0zhang@bsu.edu"));
        mail.Subject = "This mail is send from asp.net application";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "This is Email Body Text.";
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        smtpClient.Send(mail);
    }
    protected void ButtonConfirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}