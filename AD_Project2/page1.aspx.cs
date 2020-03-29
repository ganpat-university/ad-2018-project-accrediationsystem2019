using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class page1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)        
        {
            Session["page"] = 1;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            String qry = "select lastpage from login where id = " + Session["id"];
            SqlCommand cmd = new SqlCommand(qry,con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.Read())
            {
                int page =(int) reader["lastpage"];
                if(page > 0)
                {
                    if(page == 6)
                    {
                        Response.Write("You have filled out your applicatoin already.");
                        Response.Redirect("UserApplication.aspx");
                    }
                    Session["page"] = page;
                    String temp = "page" + (page + 1).ToString() + ".aspx";
                    Response.Redirect(temp);
                }
            }
            reader.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["page"] = 1;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand("Insert into page1db values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "', '" + Session["id"] + "')", con);
            SqlCommand cmd2 = new SqlCommand("Update login set lastPage =  ('" +  Session["page"] + "') where id = ('" + Session["id"]+  "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("page2.aspx");
        }
    }
}