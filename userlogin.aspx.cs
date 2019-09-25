using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "registor")
            {
                lblerror.Text = "you have successfully register";
            }
            if (Request.QueryString["id"].ToString() == "loginmust")
            {
                lblerror.Text = "Please login to see your profile";
            }
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select password from userregister where email='"+txtemail.Text+"'";
        SqlDataReader dr;
        dr = com.ExecuteReader();

        if (dr.Read())
        {
            string pass = dr["password"].ToString();

            if (pass == txtpassword.Text)
            {
                Page.Session.Add("user", txtemail.Text);
                Page.Session.Timeout = 10;

                Response.Redirect("userprofile.aspx?id=success");
            }
            else
            {
                lblerror.Text = "Password is incorrect";
            }
        }
        else
        {
            lblerror.Text = "Email is incorrect";
        }
        
    }
}