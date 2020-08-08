using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise_5
{
    public partial class exercise_5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            td2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RangeValidator1.IsValid == true)
            {
                td2.Visible = true;
                int q = int.Parse(tb1.Text);
                double cprice = double.Parse(dd1.SelectedValue);
                double tprice = double.Parse(rd1.SelectedValue);
                double dprice = 0.00;
                String deco = "";
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
                Label1.Text = dd1.SelectedItem.ToString();
                Label2.Text = q.ToString();
                Label3.Text = rd1.SelectedItem.ToString();
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
                    Label4.Text = deco;
                }
                double totalprice = (cprice + tprice + dprice) * q;
                Label5.Text = totalprice.ToString();
            }
            else
            {
                td2.Visible = false;
            }
        }
    }
}