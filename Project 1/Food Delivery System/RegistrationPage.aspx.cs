using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HyperLink1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using(con)
                {
                    string ins = "Insert into [Table](Name , Email_Id , Mobile , Password , Address ) values(@a,@b,@c,@d,@e)";
                    SqlCommand cmd = new SqlCommand(ins, con);
                    cmd.Parameters.AddWithValue("a", nametxt.Text);
                    cmd.Parameters.AddWithValue("b", emailtxt.Text);
                    cmd.Parameters.AddWithValue("c", mobtxt.Text);
                    cmd.Parameters.AddWithValue("d", passtxt.Text);
                    cmd.Parameters.AddWithValue("e", addresstxt.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label6.Text = "You have succesfully registered , Please ";
                    if (HyperLink1.Visible == false)
                        HyperLink1.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("ERROR :" + ex.Message);
            }
        }
    }
}