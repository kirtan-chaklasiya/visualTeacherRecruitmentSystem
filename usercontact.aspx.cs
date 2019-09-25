using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
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
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into contact values (@c_name,@c_email,@c_query)", con);
            cmd.Parameters.AddWithValue("c_name", txtname.Text);
           
            cmd.Parameters.AddWithValue("c_email", txtemail.Text);
            cmd.Parameters.AddWithValue("c_query", txtquery.Text);

            cmd.ExecuteNonQuery();

            con.Close();
        }
        catch (Exception ex)
        {
            lblerror.Text = "Error:"+ex.Message;
        }
      
      //  try
       // {
         //  MailAddress to = new MailAddress("kirtanchaklasiya9999@gmail.com");
         //   MailAddress from = new MailAddress(txtemail.Text);
         //   MailMessage message = new MailMessage(from, to);
          //  message.Subject = "teacher Reqruitment System query";
          //  message.IsBodyHtml = true;
         //   message.Body = "Name:" + txtname.Text + "<br>Phone:" + txtcontact.Text + "<br>Query:" + txtquery.Text;
          //  SmtpClient obj = new SmtpClient("localhost", 25);
          //  obj.Send(message);
      //  }
       // catch (Exception ex)
       // {
        //    lblerror.Text = "Error:"+ex.Message;
        //}
    }
}