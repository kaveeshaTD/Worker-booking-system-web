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
    public partial class approveworkreq : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                approvereq();
            }
        }


        private void approvereq()
        {
            //string current_location = HttpContext.Current.Session["U_location"] as string;
            string type = "EMP";
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from [users] where [Role] = '" + type + "' and admin_approve = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdappreq.DataSource = ds;
            grdappreq.DataBind();
            con.Close();
        }
        protected void grdappreq_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateItem")
            {
                string id = e.CommandArgument.ToString();
                SqlConnection con = dbcon.getDbConnection();
                string querry = "update users set admin_approve = 1 where Id = '" + id + "' ";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Confirm Worker admit Request!', 'success')", true);
                approvereq();
                
            }
        }

        protected void grdappreq_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}