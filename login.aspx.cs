using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Net;
using System.Data.OleDb;

namespace Exercise_5
{
    public partial class login : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string userName = name.Text;
            string password = pass.Text;
            if (userName != "" && password != "")
            {

                SqlConnection con = new SqlConnection(connectionString);
                if (con.State != System.Data.ConnectionState.Closed)
                {
                    con.Close();
                }
                con.Open();
                
                string SQL;
                SQL = "select * from Customer where customerName='" + userName + "' and customerPassword='" + password + "'";
                SqlCommand cmd = new SqlCommand(SQL, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["user"] = userName;
                    Response.Redirect("Order.aspx");
                    
                }else if (!sdr.Read())
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid name or password";
                }
                sdr.Close();
                sdr.Dispose();
                string query = "";
                query = "SELECT * FROM Admin WHERE adminName='" + userName + "' and adminPassword='" + password + "'";
                SqlCommand cd = new SqlCommand(query, con);
                SqlDataReader sdr2 = cd.ExecuteReader();
                if (sdr2.Read())
                {
                    Session["user"] = userName;
                    Response.Redirect("Admin.aspx");
                    sdr2.Close();
                }
                else if(!sdr2.Read())
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid name or password";
                }
                sdr2.Close();
                sdr2.Dispose();
                if (con.State != System.Data.ConnectionState.Closed)
                {
                    con.Close();
                    con.Dispose();
                }
                
            }
        }
    }
}      
        
    