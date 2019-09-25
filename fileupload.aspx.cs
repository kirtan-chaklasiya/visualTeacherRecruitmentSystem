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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sfilename = UploadResumeFile();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ToString());
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into resume (Resumefile) values('" + sfilename + "')";
        com.ExecuteNonQuery();
        Response.Redirect("resumeuploadsuccess.aspx");

    }

    public string UploadResumeFile()
    {
        if (FileUpload1.HasFile)
        {
            Regex fileExpension = new Regex(@"^.+\.(doc|docx)");
            Match MatchResult = fileExpension.Match(FileUpload1.FileName);
            if (MatchResult.Success)
            {
                FileUpload1.SaveAs(Server.MapPath("Resume/" + Page.Session["user"].ToString() + FileUpload1.FileName));
                Response.Redirect("resumeuploadsuccess.aspx");

            }
            else
            {
                lblfileerror.Text = "please select a .doc/.docx/.txt/.pdf file only";
            }
        }
        return Page.Session["user"].ToString() + FileUpload1.FileName;
     
    }
}