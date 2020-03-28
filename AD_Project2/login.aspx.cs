using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.Form["username"];
            string pass = Request.Form["pass"];
            if (name == "admin" && pass == "admin")
            {
                Response.Redirect("Admin.aspx");
            }
            Session["currentUser"] = name;            
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            con.Open();            
            string temp = "select * from login where UserId = " + "('" + name + "')";
            SqlCommand cmd = new SqlCommand(temp, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string str1 = reader["password"].ToString();
                if (str1 == pass)
                {
                    Session["id"] = reader["id"];
                    Response.Redirect("temporary.aspx");
                }
                else
                {
                    Response.Write("Passwords don't match. Please Try again");                    
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                Response.Write("User name donesn't exist, Please try again.");
                Response.Redirect("Login.aspx");
            }
            reader.Close();
            con.Close();
        }

    }
}