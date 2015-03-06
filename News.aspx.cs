using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;


namespace WebApplication1
{
    public partial class News : System.Web.UI.Page
    {
        XmlTextReader XmlTextRssReader;
        XmlDocument XmlDocumentRss;
        XmlNode XmlNodeRss;
        XmlNode nodeChannel;
        XmlNode nodeItem;
        DataTable table = new DataTable();  
     
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataColumn col = table.Columns.Add("Заглавие на новина");
            DataColumn col1 = table.Columns.Add("Линк");
            XmlTextRssReader = new XmlTextReader("http://www.dnevnik.bg/rssc/?rubrid=1698");
            XmlDocumentRss = new XmlDocument();
            // Зареждане на XML съдържанието в XmlDocument
            XmlDocumentRss.Load(XmlTextRssReader);
            // Цикъл за проверка за <rss> tag
            for (int i = 0; i < XmlDocumentRss.ChildNodes.Count; i++)
            {
                if (XmlDocumentRss.ChildNodes[i].Name == "rss")
                { // при намерен <rss> tag се зареждат данните за съответния таг и подтаговете му
                    XmlNodeRss = XmlDocumentRss.ChildNodes[i];
                }
            }
            // Проверка, ако има намерени тагове в RSS да изпълнява следващите команди
            if (XmlNodeRss.ChildNodes.Count != 0)
            { // Цикъл за проверка за <channel> tag
                for (int i = 0; i < XmlNodeRss.ChildNodes.Count; i++)
                {
                    if (XmlNodeRss.ChildNodes[i].Name == "channel")
                    { // при намерен <channel> tag
                        nodeChannel = XmlNodeRss.ChildNodes[i];
                    }
                }
                // Попълване на данни за канала в етикетите
                Label1.Text = "Title: " + nodeChannel["title"].InnerText;
                Label2.Text = "Language: " + nodeChannel["language"].InnerText;
                Label3.Text = "Link: " + nodeChannel["link"].InnerText;
                Label4.Text = "Description: " + nodeChannel["description"].InnerText;
                // Цикъл за попълване на заглавия и линкове към новините в GridView-то
                for (int i = 0; i < nodeChannel.ChildNodes.Count; i++)
                {
                    if (nodeChannel.ChildNodes[i].Name == "item")// Проверка само на новините
                    {
                        nodeItem = nodeChannel.ChildNodes[i];
                        // Създаване на ред в GridView-то, съдържащ информация за новините (заглавие и линк), взета от таговете
                        DataRow row = table.NewRow();
                        row[0] = nodeItem["title"].InnerText;
                        row[1] = nodeItem["link"].InnerText;
                        table.Rows.Add(row);
                        table.AcceptChanges();
                        GridView1.DataSource = table;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
}