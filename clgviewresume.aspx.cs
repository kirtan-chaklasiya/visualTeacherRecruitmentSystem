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
            com.CommandText = "delete from resume where Rid="+Request.QueryString["del"].ToString();
            com.ExecuteNonQuery();
            Response.Redirect("clgviewresume.aspx?id=deleted");
        }
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "deleted")
            {
                lblerror.Text = "Resume is deleted successfully";
            }
        }
    }
}