using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["del"] != null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "delete from post_job where job_id=" + Request.QueryString["del"].ToString();
            com.ExecuteNonQuery();
            Response.Redirect("clgviewjob.aspx?id=delete");
        }
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "delete")
            {
                lblerror.Text = "Job deleted successfully";
            }
            if (Request.QueryString["id"].ToString() == "added")
            {
                lblerror.Text = "New Job added successfully";
            }
            if (Request.QueryString["id"].ToString() == "updated")
            {
                lblerror.Text = "Job updated successfully";
            }
        }
    }
}