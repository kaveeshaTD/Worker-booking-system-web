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
    public partial class Adminmessages : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_msgdetails();
            }
        }


        private void get_msgdetails()
        {
       
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from contact_us";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdmessages.DataSource = ds;
            grdmessages.DataBind();
            con.Close();
        }
        protected void grdmessages_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void grdmessages_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}