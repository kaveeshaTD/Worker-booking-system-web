using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlSys
{
    public partial class NavBar : System.Web.UI.MasterPage
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.Session["UserRole"] != null)
            {
                btnlogin.Visible = false;
                Panel1drop.Visible = true;

                
            }
            else
            {
                btnlogin.Visible = true;
                Panel1drop.Visible = false;
              
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnmybookingview_Click(object sender, EventArgs e)
        {
            Response.Redirect("myBooking.aspx");
        }
    }
}