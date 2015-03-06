using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            PasswordRecovery chpass = (PasswordRecovery)LoginView1.FindControl("PasswordRecovery1");
            chpass.Visible = true;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = true;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            CreateUserWizard chpass = (CreateUserWizard)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = true;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            
        }

        protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }
    }
}