using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class UserApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            string temp1 = " select * from page1db where Id = " + "('" + Session["Id"] + "')" ;
            SqlCommand cmd1 = new SqlCommand(temp1, con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();

            string temp2 = " select * from page2db where Id = " + "('" + Session["Id"] + "')";
            SqlCommand cmd2 = new SqlCommand(temp2, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();


            string temp3 = " select * from page3db where Id = " + "('" + Session["Id"] + "')";
            string temp4 = " select * from page4db where Id = " + "('" + Session["Id"] + "')";
            string temp5 = " select * from page5db where Id = " + "('" + Session["Id"] + "')";
            string temp6 = " select * from page6db where Id = " + "('" + Session["Id"] + "')";
            
            
            SqlCommand cmd3 = new SqlCommand(temp3, con);
            SqlCommand cmd4 = new SqlCommand(temp4, con);
            SqlCommand cmd5 = new SqlCommand(temp5, con);
            SqlCommand cmd6 = new SqlCommand(temp6, con);
            
            
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
            SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
            SqlDataAdapter sda5 = new SqlDataAdapter(cmd5);
            SqlDataAdapter sda6 = new SqlDataAdapter(cmd6);
            
            
            DataTable dt3 = new DataTable();
            DataTable dt4 = new DataTable();
            DataTable dt5 = new DataTable();
            DataTable dt6 = new DataTable();
            
            
            
            
            sda3.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();
            
            sda4.Fill(dt4);
            GridView4.DataSource = dt4;
            GridView4.DataBind();

            sda5.Fill(dt5);
            GridView5.DataSource = dt5;
            GridView5.DataBind();
            
            sda6.Fill(dt6);
            GridView6.DataSource = dt6;
            GridView6.DataBind();
        }
    }
}