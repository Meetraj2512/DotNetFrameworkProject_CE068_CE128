using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         Label3.Text = Session["name"].ToString();
        }

        protected void griditem_Click(object sender, EventArgs e)
        {

        }

        protected void griditem_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userDetails.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
            Session.Contents.RemoveAll();
        }

        protected void btnorder_Click(object sender, EventArgs e)
        {
            
            int total = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    if (burgerCheck.Checked)
                    {
                        total += (int.Parse(burgerPrice.Text) * int.Parse(ddlBurger.Text));
                        string ins1 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd1 = new SqlCommand(ins1, con);
                        cmd1.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd1.Parameters.AddWithValue("b", "Burger");
                        cmd1.Parameters.AddWithValue("c", int.Parse(burgerPrice.Text));
                        cmd1.Parameters.AddWithValue("d", int.Parse(ddlBurger.Text));
                        con.Open();
                        cmd1.ExecuteNonQuery();
                        con.Close();
                    }
                    if (pizzaCheck.Checked)
                    {
                        total += (int.Parse(pizzaPrice.Text) * int.Parse(ddlPizza.Text));
                        string ins2 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd2 = new SqlCommand(ins2, con);
                        cmd2.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd2.Parameters.AddWithValue("b", "Pizza");
                        cmd2.Parameters.AddWithValue("c", int.Parse(pizzaPrice.Text));
                        cmd2.Parameters.AddWithValue("d", int.Parse(ddlPizza.Text));
                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();
                    }
                    if (pastaCheck.Checked)
                    {
                        total += (int.Parse(pastaPrice.Text) * int.Parse(ddlPasta.Text));
                        string ins3 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd3 = new SqlCommand(ins3, con);
                        cmd3.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd3.Parameters.AddWithValue("b", "Pasta");
                        cmd3.Parameters.AddWithValue("c", int.Parse(pastaPrice.Text));
                        cmd3.Parameters.AddWithValue("d", int.Parse(ddlPasta.Text));
                        con.Open();
                        cmd3.ExecuteNonQuery();
                        con.Close();
                    }
                    if (friesCheck.Checked)
                    {
                        total += (int.Parse(friesPrice.Text) * int.Parse(ddlFries.Text));
                        string ins4 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd4 = new SqlCommand(ins4, con);
                        cmd4.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd4.Parameters.AddWithValue("b", "French Fries");
                        cmd4.Parameters.AddWithValue("c", int.Parse(friesPrice.Text));
                        cmd4.Parameters.AddWithValue("d", int.Parse(ddlFries.Text));
                        con.Open();
                        cmd4.ExecuteNonQuery();
                        con.Close();
                    }
                    if (breadCheck.Checked)
                    {
                        total += (int.Parse(breadPrice.Text) * int.Parse(ddlBread.Text));
                        string ins5 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd5 = new SqlCommand(ins5, con);
                        cmd5.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd5.Parameters.AddWithValue("b", "Garlic Bread");
                        cmd5.Parameters.AddWithValue("c", int.Parse(breadPrice.Text));
                        cmd5.Parameters.AddWithValue("d", int.Parse(ddlBread.Text));
                        con.Open();
                        cmd5.ExecuteNonQuery();
                        con.Close();
                    }
                    if (chocoCheck.Checked)
                    {
                        total += (int.Parse(chocoPrice.Text) * int.Parse(ddlChoco.Text));
                        string ins5 = "Insert into [order](userName , foodItem , price , quantity) values(@a,@b,@c,@d)";
                        SqlCommand cmd5 = new SqlCommand(ins5, con);
                        cmd5.Parameters.AddWithValue("a", Session["name"].ToString());
                        cmd5.Parameters.AddWithValue("b", "Choco Lava Cake");
                        cmd5.Parameters.AddWithValue("c", int.Parse(chocoPrice.Text));
                        cmd5.Parameters.AddWithValue("d", int.Parse(ddlChoco.Text));
                        con.Open();
                        cmd5.ExecuteNonQuery();
                        con.Close();
                    }
                    if(burgerCheck.Checked == false && pizzaCheck.Checked == false && pastaCheck.Checked == false && breadCheck.Checked == false && friesCheck.Checked == false && chocoCheck.Checked == false)
                    {
                        Label5.Text = "Please select atleast 1 food item !!";
                    }
                    else
                    {
                        Session["amount"] = total;
                        Response.Redirect("order.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("error : " + ex.Message);
            }
            
        }
    }
}