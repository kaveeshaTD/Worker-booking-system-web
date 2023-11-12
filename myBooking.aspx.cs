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
    public partial class myBooking : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_pendingJobs();
                get_jobststusUser();
               
            }
        }



        private void get_pendingJobs()
        {
            string current_id = HttpContext.Current.Session["id"] as string;
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from [booking] where Booked_By_Id = '" +current_id+ "' and Job_Done_Status = 0";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdmypending.DataSource = ds;
            grdmypending.DataBind();
            con.Close();
        }

        private void get_compleatejobs()
        {
            string current_id = HttpContext.Current.Session["id"] as string;
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from [booking] where Booked_By_Id = '" + current_id + "' and Job_Done_Status = 1";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdmycompleate.DataSource = ds;
            grdmycompleate.DataBind();
            con.Close();
        }


        private void get_jobststusUser()
        {

            string user_id = HttpContext.Current.Session["id"] as string;
            SqlConnection con = dbcon.getDbConnection();
            string getQuerry = "select Job_Done_Status from booking where Booked_By_Id = '" + user_id+ "'";
            string getJobststus = null;
           
            SqlCommand cmd = new SqlCommand(getQuerry, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                getJobststus = reader["Job_Done_Status"].ToString();
                if(getJobststus == "1")
                {
                    get_compleatejobs();
                }

            }
            con.Close();
        }

        protected void grdcptn_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void grdmycompleate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void grdmypending_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}