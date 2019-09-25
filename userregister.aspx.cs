using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into userregister values (@First_Name,@Last_Name,@Email,@Contact_Number,@Gender,@Address,@City,@Password)", con);
        cmd.Parameters.AddWithValue("First_Name", txtfname.Text);
        cmd.Parameters.AddWithValue("Last_Name", txtlaname.Text);
        cmd.Parameters.AddWithValue("Email", txtemail.Text);
        cmd.Parameters.AddWithValue("Contact_Number", txtcontact.Text);
        cmd.Parameters.AddWithValue("Gender", rdbmale.Text);
        cmd.Parameters.AddWithValue("Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("City", txtcity.Text);
        cmd.Parameters.AddWithValue("Password", txtpassword.Text);
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("userlogin.aspx?id=registor");
        lblerror.Text = "you have successfully register";
    
    }
}