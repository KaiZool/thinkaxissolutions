using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsend_click(object sender, EventArgs e)
    {
        SmtpClient client = new SmtpClient();
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.EnableSsl = true;

        System.Net.NetworkCredential userpassword = new System.Net.NetworkCredential();
        userpassword.UserName = "curiousbooks2016@gmail.com";
        userpassword.Password = "dob250392";

        client.Credentials = userpassword;

        MailMessage msg = new MailMessage("curiousbooks2016@gmail.com", "curiousbooks2016@gmail.com");

        msg.Body = "<b> Sender's Name: </b>" + txtboxname1.Text + "<p><b> Sender's E-mail: </b>" + txtboxemail1.Text + "<p><b>Sender's Subject: </b>" + txtboxsub1.Text + "<p><b>Sender's Message: </b>" + "<p>" + txtboxmsg1.Text;
        msg.Subject = txtboxsub1.Text;
        msg.IsBodyHtml = true;

        try
        {
            client.Send(msg);
            literal1.Text = "<p> Message Successfully Sent </p>";
        }

        catch (Exception ex)
        {
            literal1.Text = "<p> Send failed </p>";
        }
    }
}