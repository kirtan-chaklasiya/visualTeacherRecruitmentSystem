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
        if (Request.QueryString["edit"] != null)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select * from post_job where job_id=" + Request.QueryString["edit"].ToString();
                SqlDataReader dr = com.ExecuteReader();

                if (dr.Read())
                {
                    txtjobtitle.Text = dr["Job_title"].ToString();
                    txtdesc.Text = dr["Job_description"].ToString();
                    txtdate.Text = dr["Last_date"].ToString();
                    txtnoofjob.Text = dr["No_of_jobs"].ToString();
                    txtquali.Text = dr["Require_qual"].ToString();
                    txtexp.Text = dr["Require_exp"].ToString();
                }
                con.Close();
            }
        }

    }
 
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["edit"] != null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "update post_job set Job_title='" + txtjobtitle.Text + "',Job_description='" + txtdesc.Text + "',Last_date='" + txtdate.Text + "',No_of_jobs='" + txtnoofjob.Text + "',Require_qual='" + txtquali.Text + "',Require_exp='" + txtexp.Text + "' where job_id=" + Request.QueryString["edit"].ToString() + "";
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("clgviewjob.aspx?id=updated");
        }
    }
}