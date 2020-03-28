using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand("Insert into page4db values('" + Session["id"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("page5.aspx");
        }
    }
}