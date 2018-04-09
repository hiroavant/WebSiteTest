using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnContactSubmit_Click(object sender, EventArgs e)
    {
        //sends email usinig a mail server that requires login credentials and a secure connection e.g. email

        //create mail client and message with to and from address set message subject and body 
        SmtpClient sClient = new SmtpClient();
        System.Net.NetworkCredential NetCreditentail = new System.Net.NetworkCredential("Exploreravant@gmail.com", "");
        MailMessage mail = new MailMessage("exploreravant@gmail.com", tbxcontactEmail.Text);
        mail.Subject = tbxcontactSubject.Text;
        mail.Body = txtcontactReason.Text;

        //settings specific to the mail service, e.g. server location, port number and that ssl is required
        sClient.Host = "smtp.gmail.com";
        sClient.Port = 587;
        sClient.EnableSsl = true;

        //create credentials  - e.g. username and password for the account
        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("exploreravant@gmail.com", "");
        sClient.Credentials = credentials;
        mail = new MailMessage("exploreravant@gmail.com", "");

        try
        {
            sClient.Send(mail);
            litResult.Text = "<p>Success. Mail sent using SMTP with secure connection and credentials</p>";
        }

        catch (Exception ex)
        {
            //display the full error to the user
            litResult.Text = "<p>" + ex.Message + "." + ex.InnerException + "</p>";
        }
    }
}