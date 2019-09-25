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
        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "insert into post_job values('" + txtjobtitle.Text + "','" + txtdesc.Text + "','" + txtdate.Text + "','" + txtnoofjob.Text + "','" + txtquali.Text + "','" + txtexp.Text + "')";
            com.ExecuteNonQuery();
            Response.Redirect("clgviewjob.aspx?id=added");
        }
        catch (Exception ex)
        {
            lblerror.Text = "Error:" + ex.Message;
        }
    }
}