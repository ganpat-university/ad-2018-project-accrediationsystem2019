using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class page5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["page"] = Convert.ToInt32(Session["page"].ToString()) + 1;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand("Insert into page5db values('" + Session["id"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            SqlCommand cmd2 = new SqlCommand("Update login set lastPage =  ('" + Session["page"] + "') where id = ('" + Session["id"] + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("page6.aspx");
        }
    }
}