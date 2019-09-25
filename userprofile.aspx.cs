using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] == null)
        {
            Response.Redirect("userlogin.aspx?id=loginmust");
        }
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "success")
            {
                lblerror.Text = "You have successfully loged in";
            }
        }
    }
}