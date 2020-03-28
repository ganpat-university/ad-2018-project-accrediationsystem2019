using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand("Insert into page2db values( '" + Session["id"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("page3.aspx");
        }
    }
}