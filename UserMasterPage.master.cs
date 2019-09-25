using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
   protected void Page_Load(object sender, EventArgs e)
    {
      //  if (Page.Session["user"] != null)
      //  {
       //     llbloginlogout.Text = "Logout";
      //      llbsignupprofile.Text = "Profile";
      //  }
      ////  else
      //  {
       //     llbloginlogout.Text = "Login";
       //     llbsignupprofile.Text = "SignUp";
       // }
    }
    protected void llbloginlogout_Click(object sender, EventArgs e)
    {
      //  if (llbloginlogout.Text == "Login")
      //  {
      //      Response.Redirect("userlogin.aspx");
      //  }
      ////  if (llbloginlogout.Text == "Logout")
       // {
       //     Page.Session.Abandon();
       //     Response.Redirect("userhome.aspx?id=logout");
       // }

    }
    protected void llbsignupprofile_Click(object sender, EventArgs e)
    {
       // if (llbsignupprofile.Text == "SignUp")
       // {
       //     Response.Redirect("userregister.aspx");
       // }
       // if (llbsignupprofile.Text == "Profile")
       // {
            
        //    Response.Redirect("userprofile.aspx");
        //}
    }
}
