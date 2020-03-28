using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AD_Project2
{
    public partial class ApplicationSubmission1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.Form["full_name"];
            string email = Request.Form["email"];
            string sop = Request.Form["message"];
            string userid = "";
            if (Session["currentUser"] != null)
            {
                 userid = Session["currentUser"].ToString();
            }
            else
            {
                userid = "test1";
            }            
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/PDF/") + userid);
                Response.Write("Uploaded Successfully");
            }
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Neel Rayal\Documents\Ad_project2.mdf'; Integrated Security = True; Connect Timeout = 30");
            SqlCommand cmd = new SqlCommand("insert into ApplicationSubmissionTable values" + "('" + name + "', '" + email + "', '" + sop + "', '" + userid + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}