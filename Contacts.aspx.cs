using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

namespace WebApplication1
{
    public partial class Contacts : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label2.Text != "" && Label1.Text != "" && Label3.Text != "" && Label4.Text != "")
            {
                SmtpClient MailClient = new SmtpClient("localhost");
                MailMessage Email = new MailMessage();
                try
                {
                    Email.From = new MailAddress(Label2.Text);
                    Email.To.Add(Label1.Text);
                    Email.Subject = Label3.Text;
                    Email.Body = Label4.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    Label5.Text = "Email sent";
                }
                catch (Exception)
                { Label5.Text = "Error in sending email!"; }
                Label2.Text = "";
                Label1.Text = "";
                Label3.Text = "";
                Label4.Text = "";
            }
        }
    }
}