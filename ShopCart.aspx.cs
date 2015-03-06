using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

namespace WebApplication1
{
    public partial class ShopCart : Inherited
    {
               public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=User-pc;Initial Catalog=Books;Integrated Security=True ";
            return conn;

        }
               protected void Page_Load(object sender, EventArgs e)
               {

                   Session["UserName"] = Membership.GetUser().UserName;
                   try
                   {
                       Label2.Visible = false;
                       Label2.Text = Membership.GetUser().UserName;
                   }
                   catch (Exception)
                   {
                       Label2.Text = "nqma user";
                   }
                   
                       SqlConnection conn = CreateConnection();
                       using (conn)
                       {
                           SqlCommand comm = new SqlCommand("Select Sum(Price*Qty) From ShopCart s where OrderID= '" +Label2.Text + "' ", conn);
                           conn.Open();
                           SqlDataReader dr = comm.ExecuteReader();
                           if (dr.Read())
                           {
                               lblTotal.Text = dr.GetValue(0).ToString();
                               dr.Close();
                           }
                           conn.Close();
                       }
                                  
               }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                foreach (DataListItem item in DataList1.Items)
                {
                    CheckBox chbox = item.FindControl("CheckBox1") as CheckBox;
                    if (chbox.Checked == true)
                    {
                        string bookid = ((Label)item.FindControl("BookIDLabel")).Text;
                        SqlConnection conn = CreateConnection();
                        using (conn)
                        {
                            SqlCommand myCommand = new SqlCommand("DeleteShopCart", conn);
                            myCommand.CommandType = CommandType.StoredProcedure;


                            SqlParameter bi = new SqlParameter("@BookID", SqlDbType.NVarChar);
                            bi.Value = ((Label)item.FindControl("BookIDLabel")).Text;
                            myCommand.Parameters.Add(bi);

                            try
                            {
                                conn.Open();
                                myCommand.ExecuteNonQuery();
                                conn.Close();
                            }
                            catch (SqlException se)
                            {
                                conn.Close();
                            }
                        }
                    }
                }
                Response.Redirect("ShopCart.aspx");
            }
            catch (Exception se)
            {
               

            }

        }
       

        }
    }
