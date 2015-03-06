using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Details : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = Membership.GetUser().UserName;
        }
        public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=User-pc;Initial Catalog=Books;Integrated Security=True ";
            return conn;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
             SqlConnection conn = CreateConnection();
             using (conn)
             {

                 SqlCommand cmnd = new SqlCommand("ShopCartProcedure", conn);
                 cmnd.CommandType = CommandType.StoredProcedure;
                 cmnd.CommandText = "ShopCartProcedure";
                 SqlParameter OrderID = new SqlParameter("@OrderID", SqlDbType.NVarChar);
                OrderID.Value =Session["UserName"].ToString();
                 cmnd.Parameters.Add(OrderID);
                 SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                 BookID.Value =((Label)FormView1.FindControl("BookIDLabel")).Text;
                 cmnd.Parameters.Add(BookID);
                 SqlParameter BookTitle = new SqlParameter("@BookTitle", SqlDbType.NVarChar);
                 BookTitle.Value = ((Label)FormView1.FindControl("BookTitleLabel")).Text;
                 cmnd.Parameters.Add(BookTitle);
                 SqlParameter Price = new SqlParameter("@Price", SqlDbType.Money);
                 Price.Value = ((Label)FormView1.FindControl("BookPriceLabel")).Text;
                 cmnd.Parameters.Add(Price);
                 SqlParameter Qty = new SqlParameter("@Qty", SqlDbType.Int);
                 Qty.Value = ((TextBox)FormView1.FindControl("Label1")).Text;
                 cmnd.Parameters.Add(Qty); 
                   conn.Open();
                        cmnd.ExecuteNonQuery();
                        Button btn = (Button)sender;
                        btn.Text = " Книгата/ите бяха добавени успешно ";
                        btn.Enabled = false;

               
             }

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}