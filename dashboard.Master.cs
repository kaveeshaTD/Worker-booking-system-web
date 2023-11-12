using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ControlSys
{
    public partial class dashboard : System.Web.UI.MasterPage
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["UserRole"] != null)
            {
               btndname.Visible = true;

                if (Session["UserRole"] != null && Session["UserRole"].ToString().Equals("Admin", StringComparison.OrdinalIgnoreCase))
                {
                    panaljobs.Visible = false;
                    
                }
                else
                {

                    panalworkers.Visible = false;
                    appwreq.Visible = false;
                    
                }
            }
            else
            {
                btndname.Visible = false;
                //panaljobs.Visible = false;
               
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogout_Click1(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click1(object sender, EventArgs e)
        {

        }

        protected void btnlogoutdbord_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("dashbordHomepahe.aspx");
        }

        protected void btncompjob_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcomCPT.aspx");
        }
    }
}