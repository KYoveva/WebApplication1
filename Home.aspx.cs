using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Home : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = "Здравейте, " + Membership.GetUser().UserName + "!Добре дошли в електронната книжарница Книгомания! ";
                Label2.Text = "Датата и часът са :" + DateTime.Now.ToString() + "; Вашият браузър е: " + Request.Browser.Browser;
            }
            catch (Exception)
            {
                Label1.Text = "";
                Label2.Text = "";
                Label1.Visible = false;
                Label2.Visible = false;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}