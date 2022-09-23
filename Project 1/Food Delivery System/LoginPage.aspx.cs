using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Reflection.Emit;
using System.Xml.Linq;

namespace Project1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\meetr\\source\\repos\\Project 1\\Food Delivery System\\App_Data\\Register.mdf\";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using(con)
                {
                    string command = "select COUNT(*)FROM [Table] WHERE Name='" + usertxt.Text + "'";
                    SqlCommand cmd = new SqlCommand(command, con);
                    con.Open();
                    int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    con.Close();
                    if (temp == 1)
                    {
                        con.Open();
                        string chkPassword = "select Password from [Table] where Name = '" + usertxt.Text + "'";
                        SqlCommand passComm = new SqlCommand(chkPassword, con);
                        string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                        if(password == passtxt.Text)
                        {
                            Session["name"] = usertxt.Text;
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            Label4.Text = "Invalid password";
                            this.Label4.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        Label4.Text = "Invalid username";
                        this.Label4.ForeColor = Color.Red;
                    }
                }
            }
            catch(Exception ex)
            {
                Label4.Text = ex.Message;
                this.Label4.ForeColor = Color.Red;
            }
        }
    }
    
}