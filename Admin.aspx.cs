using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Exercise_5
{
    public partial class Admin : System.Web.UI.Page
    {
        public string str;
        private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(connectionString);
            if (Session["user"] != null)
            {
                Label2.Visible = false;
                Label3.Visible = true; 
                
            }
            else if (Session["user"] == null)
            {
                Label2.Visible = true;
                Label3.Visible = false;
                Response.Redirect("Order.aspx");
            }
            if (con != null && con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
                con.Dispose();

            }
        }

    }
}