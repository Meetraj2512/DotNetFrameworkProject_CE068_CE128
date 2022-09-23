using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Delivery_System
{
    public partial class userDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    string command = "select * from [Table] where Name = @a";
                    SqlCommand cmd = new SqlCommand(command, con);
                    cmd.Parameters.AddWithValue("a", Session["name"]);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.Message);
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}