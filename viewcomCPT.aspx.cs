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
    public partial class viewcomCPT : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_compleateJob();
            }
        }

        private void get_compleateJob()
        {
            string current_id = HttpContext.Current.Session["id"] as string;
            //string type = "Carpentry";
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from booking where Worker_Id = '" + current_id + "' and Job_Done_Status = 1";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdviewcptr.DataSource = ds;
            grdviewcptr.DataBind();
            con.Close();
        }

        protected void grdviewcptr_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}