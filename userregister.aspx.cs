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
        if (!IsPostBack)
        {
            //txtfname.Text = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from userregister where email ='" + txtemail.Text + "'", con);
        int c1 = Int32.Parse(cmd.ExecuteScalar().ToString());
        if (c1 == 1)
        {
            lblerror.Text = "Email is Already Exist";

        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("insert into userregister values (@First_Name,@Last_Name,@Email,@Contact_Number,@Gender,@Address,@City,@Password)", con);
            cmd1.Parameters.AddWithValue("First_Name", txtfname.Text);
            cmd1.Parameters.AddWithValue("Last_Name", txtlaname.Text);
            cmd1.Parameters.AddWithValue("Email", txtemail.Text);
            cmd1.Parameters.AddWithValue("Contact_Number", txtcontact.Text);
            cmd1.Parameters.AddWithValue("Gender", rdbmale.Text);
            cmd1.Parameters.AddWithValue("Address", txtaddress.Text);
            cmd1.Parameters.AddWithValue("City", txtcity.Text);
            cmd1.Parameters.AddWithValue("Password", txtpassword.Text);
            Response.Write(cmd1.CommandText);

            cmd1.ExecuteNonQuery();
            con.Close();
            lblerror.Text = "you have successfully register";

           
            Response.Redirect("userlogin.aspx?id=registor");
           
        }
    }
}