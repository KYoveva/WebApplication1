using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             string[] fileBreak = FileUpload1.FileName.Split(new char[] { '.' });
        if (!FileUpload1.HasFile)
        { lblMessageText.Text = "Изберете Файл"; }
        else if (fileBreak[1].ToUpper() != "JPG")
        { lblMessageText.Text = "Файлът трябва да е JPG"; }
        else if (FileUpload1.PostedFile.ContentLength > 100000)
        { lblMessageText.Text = "Файлът трябва да е под 100 KB."; }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("./BookPictures/") + FileUpload1.FileName);
            lblMessageText.Text = "<b>Файлът е добавен</b><br/>";
            lblMessageText.Text += "Име: " + FileUpload1.FileName + "<br/>";
            lblMessageText.Text += "Размер: " + FileUpload1.PostedFile.ContentLength + " bytes<br/>";
        }
        }
    }
}