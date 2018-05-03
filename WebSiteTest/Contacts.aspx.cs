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
        SmtpClient sClient = new SmtpClient
        {
            //settings specific to the mail service, e.g. server location, port number and that ssl is required
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true
        };

        //create credentials  - e.g. username and password for the account
        System.Net.NetworkCredential NetCreditentail = new System.Net.NetworkCredential("expavantg@gmail.com", "expYuri779");
        sClient.Credentials = NetCreditentail;
        MailMessage mail = new MailMessage("expavantg@gmail.com", tbxcontactEmail.Text)
        {
            Subject = tbxcontactSubject.Text,
            Body = txtcontactReason.Text
        };


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