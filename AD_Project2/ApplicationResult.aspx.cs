using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class ApplicationSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["currentUser"] != null)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
                con.Open();
                string temp = "select * from ApplicationResultTable where name = " + "('" + Session["currentUser"] + "')";
                SqlCommand cmd = new SqlCommand(temp, con);
                SqlDataReader reader = cmd.ExecuteReader();
                string temp1 = Session["currentUser"].ToString();
                string temp2 = "";
                Label1.Text = temp1;
                if (reader.Read())
                {
                    string result = reader["result"].ToString();
                    if (result == "0")
                    {
                        temp2 = "You have not made any submission yet or your application is still pending. Submit your application via our portal and see later on if your application is selected or not. ";
                        Label2.Text = temp2;
                    }
                    else if (result == "1")
                    {
                        temp2 = "Congraculations, Your university application has been accepted! ";
                        Label2.Text = temp2;
                    }
                    else
                    {
                        temp2 = "Sorry, Your application has been rejected. ";
                        Label2.Text = temp2;
                    }                    
                }                
                reader.Close();
                con.Close();
            }
            else
            {
                Label2.Text = "Login In to see your application result.";
            }
        }
    }
}