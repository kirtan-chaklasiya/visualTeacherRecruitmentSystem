using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] == null)
        {
            Response.Redirect("userlogin.aspx?is=loginmust");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select * from userregister where email='"+Page.Session["user"].ToString()+"'";
        SqlDataReader dr;
        dr=com.ExecuteReader();

        if (dr.Read())
        {
            txtname.Text = dr["first_name"].ToString();
            txtaddress.Text = dr["address"].ToString();
            txtcontact.Text = dr["Contact_Number"].ToString();
            txtemail.Text = dr["email"].ToString();
        }
        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into Resume (Name,Address,Contact,E_mail,Highest_Qualification,Specialization,job_id,Institute,Passing_Year) values('" + txtname.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + ddlhigh.Text + "','"+ddlspecial.Text+"','" + Request.QueryString["id"].ToString() + "','"+txtinstitute.Text+"','"+ddlpass.Text+"')";
        com.ExecuteNonQuery();
        Response.Redirect("fileupload.aspx");
    

    }

   
 
}