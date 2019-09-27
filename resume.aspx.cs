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
        if (!IsPostBack)
        {
            disppass();
            dispSpec();
            dispquali();

        }
        if (Page.Session["user"] == null)
        {
            Response.Redirect("userlogin.aspx?is=loginmust");
        }
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con1.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con1;
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
        con1.Close();
    }
    void dispquali()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        SqlCommand cmd = new SqlCommand("select * from Qualification ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddlhigh.DataSource = dt;
        ddlhigh.DataBind();
        ddlhigh.DataTextField = "quali_name";
        ddlhigh.DataValueField = "quali_id";
        ddlhigh.DataBind();
        ddlhigh.Items.Insert(0, new ListItem("--select--", "0"));
        ddlhigh.Items[0].Selected = true;
        ddlhigh.Items[0].Attributes["disabled"] = "disabled";

    }
    void dispSpec()
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
            SqlCommand cmd = new SqlCommand("select * from specialization ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddlspecial.DataSource = dt;
            ddlspecial.DataBind();
            ddlspecial.DataTextField = "spec_name";
            ddlspecial.DataValueField = "spec_id";
            ddlspecial.DataBind();
            ddlspecial.Items.Insert(0, new ListItem("--select--", "0"));
            ddlspecial.Items[0].Selected = true;
            ddlspecial.Items[0].Attributes["disabled"] = "disabled";

    }
    void disppass()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        SqlCommand cmd = new SqlCommand("select * from passing_year ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ddlpass.DataSource = dt;
        ddlpass.DataBind();
        ddlpass.DataTextField = "pass_year";
        ddlpass.DataValueField = "pass_id";
        ddlpass.DataBind();
        ddlpass.Items.Insert(0, new ListItem("--select--", "0"));
        ddlpass.Items[0].Selected = true;
        ddlpass.Items[0].Attributes["disabled"] = "disabled";

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into Resume (Name,Address,Contact,E_mail,Highest_Qualification,Specialization,job_id,Institute,Passing_Year) values('" + txtname.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + ddlhigh.SelectedItem.ToString() + "','"+ddlspecial.SelectedItem.ToString()+"','" + Request.QueryString["id"].ToString() + "','"+txtinstitute.Text+"','"+ddlpass.SelectedItem.ToString()+"')";
        com.ExecuteNonQuery();
        Response.Redirect("fileupload.aspx");
    

    }

   
 
}