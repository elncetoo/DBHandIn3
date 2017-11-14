using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBHandIn3
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("LogIn.aspx");
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["email"] = null;
            HttpContext.Current.Session["admin_name"] = null;

            LabelMessageLogOut.Text = "You have succesfully logged out.";

        }
    }
}