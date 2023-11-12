﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ControlSys
{
    public partial class bookcptr : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                if (Session["UserRole"] != null && Session["UserRole"].ToString().Equals("Admin", StringComparison.OrdinalIgnoreCase))
                {
                    get_cptDataAdmin();
                    foreach (DataControlField column in grdcptn.Columns)
                    {
                        
                        if (column is TemplateField)
                        {
                            
                            column.Visible = false;
                        }
                    }


                }
                else
                {

                    get_cptData();

                }
            }
        }

        //perinit
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["UserRole"] != null && Session["UserRole"].ToString().Equals("Admin", StringComparison.OrdinalIgnoreCase))
            {
                this.MasterPageFile = "~/dashboard.master";
            }
            else
            {

            }
        }

        private void get_cptData()
        {
            string current_location = HttpContext.Current.Session["U_location"] as string;
            string type = "Carpentry";
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from [users] where Work_type = '"+ type + "' and Job_status = 1 and U_location = '"+current_location+ "' and admin_approve = 1";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdcptn.DataSource = ds;
            grdcptn.DataBind();
            con.Close();
        }

        //for admin data view
        private void get_cptDataAdmin()
        {
            //string current_location = HttpContext.Current.Session["U_location"] as string;
            string type = "Carpentry";
            SqlConnection con = dbcon.getDbConnection();
            string query = "select *from [users] where Work_type = '" + type + "' and admin_approve = 1";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdcptn.DataSource = ds;
            grdcptn.DataBind();
            con.Close();
        }


        //private void insertUserdtls(string getU_id)
        //{
        //    string user_id = HttpContext.Current.Session["id"] as string;
        //    string user_name = HttpContext.Current.Session["Frist_Name"] as string;
        //    string user_email = HttpContext.Current.Session["Email"] as string;
        //    string user_location = HttpContext.Current.Session["U_location"] as string;
        //    string user_mobile = HttpContext.Current.Session["Mobile"] as string;

        //    string Wid = getU_id;
        //    SqlConnection con = dbcon.getDbConnection();
        //    string update_querry = "update booking set Booked_By_Id ='" + user_id + "',Booked_By_Name='" + user_name + "',Booked_By_Email='" + user_email + "',Booked_By_location='" + user_location + "',Booked_By_Mobile='" + user_mobile + "' where Worker_Id = '" + Wid + "'";
        //    SqlCommand cmd = new SqlCommand(update_querry, con);
        //    cmd.ExecuteNonQuery();
        //    System.Windows.Forms.MessageBox.Show("all done");
        //    con.Close();
        //}
        //insert to booking table user info
        private void getfromdb_workdtls(string get_id)
        {
            //System.Windows.Forms.MessageBox.Show("function call ok");
            string id = get_id;
            //session part
            string user_id = HttpContext.Current.Session["id"] as string;
            string user_name = HttpContext.Current.Session["Frist_Name"] as string;
            string user_email = HttpContext.Current.Session["Email"] as string;
            string user_location = HttpContext.Current.Session["U_location"] as string;
            string user_mobile = HttpContext.Current.Session["Mobile"] as string;
            //session part end
            SqlConnection con = dbcon.getDbConnection();
            string getQuerry = "select Id,First_Name,Email,rate_per_hour,U_location,Mobile from [users] where Id = '" + id + "'";
            string get_wid = null;
            string get_wname = null;
            string get_wemail = null;
            string get_wrate = null;
            string get_wlocation = null;
            string get_wmobile = null;
            SqlCommand cmd = new SqlCommand(getQuerry, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                get_wid = reader["Id"].ToString();
                get_wname = reader["First_Name"].ToString();
                get_wemail = reader["Email"].ToString();
                get_wrate = reader["rate_per_hour"].ToString();
                get_wlocation = reader["U_location"].ToString();
                get_wmobile = reader["Mobile"].ToString();
                reader.Close();

                string insertQuery = "insert into booking(Booked_By_Id,Booked_By_Name,Booked_By_Email,Booked_By_location,Booked_By_Mobile,Booked_date,Worker_Id,Worker_Name,Worker_Email,Worker_rate,Worker_Location,Worker_Mobile)values('"+user_id+"','"+user_name+"','"+user_email+"','"+user_location+"','"+user_mobile+"','" + DateTime.Now+"','"+ get_wid + "','"+get_wname+"','"+get_wemail+"','"+get_wrate+"','"+get_wlocation+"','"+get_wmobile+"')";
                SqlCommand cmd2 = new SqlCommand(insertQuery, con);
                cmd2.ExecuteNonQuery();
                //System.Windows.Forms.MessageBox.Show("insert ok to booking table all done");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Worker Booking Success!', 'success')", true);
                //insertUserdtls(id);
            }
            con.Close();
        }
        protected void grdapprovaltest_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           if(e.CommandName == "UpdateItem")
            {
                string id = e.CommandArgument.ToString();
                SqlConnection con = dbcon.getDbConnection();
                string querry = "update users set Job_status = 0 where Id = '" + id + "' ";
                SqlCommand cmd = new SqlCommand(querry, con);
                cmd.ExecuteNonQuery();
                get_cptData();
                getfromdb_workdtls(id);
            }
        }

        protected void grdcptn_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdcptn.PageIndex = e.NewPageIndex;
            this.get_cptData();
        }
    }
}