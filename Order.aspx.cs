using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Exercise_5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string str;
        private string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(connectionString);
            if (Session["user"] != null)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = true;
                
            }
            else if (Session["user"] == null)
            {
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = false;
            }
            if (con2 != null && con2.State == System.Data.ConnectionState.Open)
            {
                con2.Close();
                con2.Dispose();

            }
        }

        protected void ClickButton1(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                if (RangeValidator1.IsValid == true)
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    if (con != null && con.State == System.Data.ConnectionState.Open)
                    {
                        con.Close();
                        con.Dispose();
                    }
                    Label9.Visible = true;
                    int q = int.Parse(tb1.Text);
                    SqlCommand cakeprice = new SqlCommand("SELECT cakePrice FROM [Cake] WHERE ([cakeName] = '" + dd1.SelectedValue + "')", con);
                    con.Open();
                    double cprice = double.Parse(cakeprice.ExecuteScalar().ToString());
                    SqlCommand toppingprice = new SqlCommand("SELECT toppingPrice FROM [Topping] WHERE ([toppingName] = '" + rd1.SelectedValue + "')", con);
                    double tprice = double.Parse(toppingprice.ExecuteScalar().ToString());
                    double dprice = 0.00;
                    SqlCommand decoprice = new SqlCommand("SELECT decorationPrice FROM [Decoration] WHERE ([decorationName] ='" + cb1.Items + "')", con);
                    string deco = "";
                    foreach (ListItem decoration in cb1.Items)
                    {
                        if (decoration.Selected)
                        {
                            double tmpvalue = 0.00;
                            if (double.TryParse(decoration.Value, out tmpvalue))
                            {
                                dprice += tmpvalue;
                            }
                        }
                    }
                    Image1.ImageUrl = "images/" + dd1.SelectedItem.ToString() + ".jpg";
                    Label4.Text = dd1.SelectedItem.ToString();
                    Label5.Text = q.ToString();
                    Label6.Text = rd1.SelectedItem.ToString();
                    for (int i = 0; i < cb1.Items.Count; i++)
                    {
                        if (cb1.Items[i].Selected == true)
                        {
                            deco += cb1.Items[i].Text + " , ";
                        }
                    }
                    if (deco != "")
                    {
                        deco = deco.Substring(0, deco.Length - 2);
                        Label7.Text = deco;
                    }
                    double totalprice = (cprice + tprice + dprice) * q;
                    Label8.Text = totalprice.ToString();

                    SqlCommand customerID = new SqlCommand("SELECT customerID FROM [Customer] WHERE ([customerName] = '" + Session["user"] + "')", con);
                    string cusID = "";
                    using (SqlDataReader oReader = customerID.ExecuteReader())
                    {
                        while (oReader.Read())
                        {
                            cusID = oReader["customerID"].ToString();
                        }

                        oReader.Close();
                    }
                    SqlCommand cakeID = new SqlCommand("SELECT cakeID FROM [Cake] WHERE ([cakeName] = '" + Label4.Text + "')", con);
                    string caID = "";
                    using (SqlDataReader oReader2 = cakeID.ExecuteReader())
                    {
                        while (oReader2.Read())
                        {
                            caID = oReader2["cakeID"].ToString();
                        }

                        oReader2.Close();
                    }
                    SqlCommand toppingID = new SqlCommand("SELECT toppingID FROM [Topping] WHERE ([toppingName] = '" + Label6.Text + "')", con);
                    string topID = "";
                    using (SqlDataReader oReader3 = toppingID.ExecuteReader())
                    {
                        while (oReader3.Read())
                        {
                            topID = oReader3["toppingID"].ToString();
                        }

                        oReader3.Close();
                    }


                    string insertOrder;
                    insertOrder = "INSERT INTO [Order] (";
                    insertOrder += "customerID,cakeID,quantity,toppingID,decorationName,orderPrice)";
                    insertOrder += "VALUES ('";
                    insertOrder += cusID + "','";
                    insertOrder += caID + "','";
                    insertOrder += Label5.Text + "','";
                    insertOrder += topID + "','";
                    insertOrder += deco + "','";
                    insertOrder += Label8.Text + "')";
                    SqlCommand cmd = new SqlCommand(insertOrder, con);
                    int added = 0;
                    try
                    {
                        added = cmd.ExecuteNonQuery();
                        Label1.Text = added.ToString() + " record inserted.";
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
                else
                {
                    Label9.Visible = false;

                }
            }
            else
            {
                string message = "Please login before you order.";
                MessageBox.Show(message, "Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }
    }
}
