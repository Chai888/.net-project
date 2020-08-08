using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise_5
{
    public partial class Register : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userName = name.Text;
            string password = pass.Text;
            string add = address.Text;
            SqlConnection con = new SqlConnection(connectionString);
            
            if (userName != "" && password != "" && add != "")
            {
                if (con != null && con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                    con.Dispose();
                }
                SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM [Customer] WHERE ([customerName] = @user)", con);
                check_User_Name.Parameters.AddWithValue("@user", userName);
                con.Open();
                int UserExist = (int)check_User_Name.ExecuteScalar();

                if (UserExist > 0)
                {
                    Label1.Visible = true;
                    Label1.Text = "Your name already exists. ";
                }
                else
                {
                    string insertSQL; 
                    insertSQL = "INSERT INTO [Customer] ("; 
                    insertSQL += "customerName, customerPassword,customerAddress)"; 
                    insertSQL += "VALUES ('"; 
                    insertSQL += userName + "','";
                    insertSQL += password + "','"; 
                    insertSQL += add + "')"; 
                    SqlCommand cmd = new SqlCommand(insertSQL, con);
                    int added = 0;
                    try
                    {
                        added = cmd.ExecuteNonQuery();
                        Session["user"] = userName;
                        Response.Redirect("Order.aspx");

                    }
                    catch (Exception err)
                    {
                        Label1.Visible = true;
                        Label1.Text = "error inserting record. ";
                        Label1.Text += err.Message;

                    }
                    finally
                    {
                        if (con != null && con.State == System.Data.ConnectionState.Open)
                        {
                            con.Close();
                            con.Dispose();
                        }
                    }
                    
                }
            }
                
            
        }
    }
}