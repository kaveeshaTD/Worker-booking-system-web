using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 

namespace ControlSys
{
    public partial class Workesignup : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                location_dropdown();
                Work_type_drop();
                worker_rates_drop();
                Worker_expe_drop();
            }
           
        }


        private void location_dropdown()
        {
            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT Lo_id, U_Location FROM locations";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            drpworkerlocation.DataSource = reader;
            drpworkerlocation.DataValueField = "Lo_id";
            drpworkerlocation.DataTextField = "U_Location";
            drpworkerlocation.DataBind();
            reader.Close();
            drpworkerlocation.Items.Insert(0, new ListItem(" Select Your Location ", ""));
        }

        private void Work_type_drop()
        {
            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT Work_id, Work_type FROM Work_type";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            drpworktype.DataSource = reader;
            drpworktype.DataValueField = "Work_id";
            //ddlOptions.DataTextField = "Budget";
            drpworktype.DataTextField = "Work_type";
            drpworktype.DataBind();
            reader.Close();
            drpworktype.Items.Insert(0, new ListItem(" Select job Role ", ""));
        }

        private void worker_rates_drop()
        {
            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT rate_id, rate FROM rates";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            drprate.DataSource = reader;
            drprate.DataValueField = "rate_id";
            //ddlOptions.DataTextField = "Budget";
            drprate.DataTextField = "rate";
            drprate.DataBind();
            reader.Close();
            drprate.Items.Insert(0, new ListItem(" Select hourly rate ", ""));
        }

        private void Worker_expe_drop()
        {
            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT Ex_id, No_of_years FROM yearsof_expeirence";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            drpexpe.DataSource = reader;
            drpexpe.DataValueField = "Ex_id";
            //ddlOptions.DataTextField = "Budget";
            drpexpe.DataTextField = "No_of_years";
            drpexpe.DataBind();
            reader.Close();
            drpexpe.Items.Insert(0, new ListItem(" Select years of Expeirence ", ""));
        }
        protected void btnreg_Click(object sender, EventArgs e)
        {
            string CT = "EMP";
            int job_status = 1;
            SqlConnection con = dbcon.getDbConnection();
            string insert_data = "Insert into users (First_Name,Email,Mobile,U_location,Role,Work_type,Password,confirm_password,Job_status,No_of_expeirence,rate_per_hour) VALUES('" + txtwname.Text + "','" + txtwemail.Text + "','"+txtwmobile.Text+"','" + drpworkerlocation.SelectedItem + "','"+ CT+ "','"+drpworktype.SelectedItem+"','" + txtwpsd.Text + "','" + txtwconpsd.Text + "','"+job_status+"','"+drpexpe.SelectedItem+"','"+ drprate.SelectedItem + "')";
            SqlCommand cmd = new SqlCommand(insert_data, con);
            int t = cmd.ExecuteNonQuery();

            if (t > 0)
            {
                //System.Windows.Forms.MessageBox.Show("Registation Sucessful....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Registation process Success!', 'success')", true);
            }
            //Response.Redirect("mainpage.aspx");
        }
    }
}