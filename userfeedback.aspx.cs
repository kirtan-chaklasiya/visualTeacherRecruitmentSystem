using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
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
        com.CommandText = "select * from userregister where email='" + Page.Session["user"].ToString() + "'";
        SqlDataReader dr;
        dr = com.ExecuteReader();

        if (dr.Read())
        {
            txtname.Text = dr["first_name"].ToString();
            txtemail.Text = dr["email"].ToString();
         
       
        }
        con.Close();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into feedback values (@f_name,@f_email,@f_feedback)", con);
        cmd.Parameters.AddWithValue("f_name", txtname.Text);
        cmd.Parameters.AddWithValue("f_email", txtemail.Text);
        cmd.Parameters.AddWithValue("f_feedback", txtfeedback.Text);
     
        cmd.ExecuteNonQuery();

        con.Close();
      
       
    }
}