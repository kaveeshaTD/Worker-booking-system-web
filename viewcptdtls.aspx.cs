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
    public partial class viewcptdtls : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_bookdetails();
            }
        }

        private void get_bookdetails()
        {
            string current_id = HttpContext.Current.Session["id"] as string;
            //string type = "Carpentry";
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from booking where Worker_Id = '"+current_id+ "' and Job_Done_Status = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdviewcptr.DataSource = ds;
            grdviewcptr.DataBind();
            con.Close();
        }

        private void updateActive_status()
        {
            string current_id = HttpContext.Current.Session["id"] as string;
            SqlConnection con = dbcon.getDbConnection();
            string querry = "update users set Job_status = 1 where Id = '" + current_id + "' ";
            SqlCommand cmd = new SqlCommand(querry, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Congratulations Job Compleate!', 'success')", true);

        }
        protected void grdviewcptr_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateItem")
            {
                string id = e.CommandArgument.ToString();
                SqlConnection con = dbcon.getDbConnection();
                string querry = "update booking set Job_Done_Status = 1 ,Job_done_time = '"+DateTime.Now+"' where Booking_id = '" + id + "' ";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.ExecuteNonQuery();
                get_bookdetails();
                updateActive_status();
                
            }
        }

        protected void grdviewcptr_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}