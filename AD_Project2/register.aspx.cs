using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string password = Request.Form["password"];
            string temp = "select * from login where UserId = " + "('" + name + "')";
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand(temp, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                Response.Write("<div class='after'>UserName Already taken, Please write another name.</div> ");
                Response.Write("UserName Already taken, Please write another name.");
                Response.Redirect("register.aspx");
            }
            else
            {
                reader.Close();
                cmd = new SqlCommand("insert into login values" + "('" + name + "', '" + password + "')", con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("insert into ApplicationResultTable values" + "('" + name + "', '" + 0 + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("Successfully inserted!");
                Response.Redirect("login.aspx");
            }
            con.Close();
        }
    }
}