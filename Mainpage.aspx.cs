using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ControlSys
{
    public partial class Mainpage : System.Web.UI.Page
    {
        Connection dbcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                user_location();
            }
        }
         private void user_location()
        {
            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT Lo_id, U_Location FROM locations";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            drpuserlocation.DataSource = reader;
            drpuserlocation.DataValueField = "Lo_id";
            drpuserlocation.DataTextField = "U_Location";
            drpuserlocation.DataBind();
            reader.Close();
            drpuserlocation.Items.Insert(0, new ListItem("Location ", ""));
        }
        protected void btnreg_Click(object sender, EventArgs e)
        {
            SqlConnection con = dbcon.getDbConnection();
            string insert_data = "Insert into users (First_Name,Email,Mobile,U_location,Password,confirm_password) VALUES('" + txtname.Text+"','"+txtemail.Text+"','"+txtmobile.Text+"','"+drpuserlocation.SelectedItem+"','"+txtpsd.Text+"','"+txtconpsd.Text+"')";
            SqlCommand cmd = new SqlCommand(insert_data , con);
            int t = cmd.ExecuteNonQuery();

            if (t > 0)
            {
                System.Windows.Forms.MessageBox.Show("Registation Sucessful....!");
            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = dbcon.getDbConnection();

            string query = "SELECT Role,First_Name FROM users where Email =@Email and Password=@Password";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@Email", txtlaid.Text);
            command.Parameters.AddWithValue("@Password", txtlpswd.Text);
            object role = command.ExecuteScalar(); // ExecuteScalar returns the first column of the first row in the result set



            if (role != null)
            {

                // Successful login
                Session["UserRole"] = role.ToString(); // Store the role in a session variable
                if (role.ToString().Equals("Admin", StringComparison.OrdinalIgnoreCase))
                {
                    // Response.Redirect("home.aspx");
                    //System.Windows.Forms.MessageBox.Show("Login as a Admin...!");
                    Response.Redirect("dashbordHomepahe.aspx");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('success!', 'Login as Admin!', 'Success')", true);
                }
                else if (role.ToString().Equals("EMP", StringComparison.OrdinalIgnoreCase))
                {
                    string check = "select Id,First_Name,Email,Mobile,U_location,Work_type,No_of_expeirence,rate_per_hour from users where Email =@Email and Password=@Password";
                    SqlCommand cmd = new SqlCommand(check, con);
                    cmd.Parameters.AddWithValue("@Email", txtlaid.Text.ToString());
                    cmd.Parameters.AddWithValue("@Password", txtlpswd.Text.ToString());
                    SqlDataReader read = cmd.ExecuteReader();

                    if (read.Read())
                    {
                        Session["id"] = read.GetValue(0).ToString();
                        Session["Frist_Name"] = read.GetValue(1).ToString();
                        Session["Email"] = read.GetValue(2).ToString();
                        Session["Mobile"] = read.GetValue(3).ToString();
                        Session["U_location"] = read.GetValue(4).ToString();
                        Session["Work_type"] = read.GetValue(5).ToString();
                        Session["No_of_expeirence"] = read.GetValue(6).ToString();
                        Session["rate_per_hour"] = read.GetValue(7).ToString();
                        //System.Windows.Forms.MessageBox.Show("Login as a user...!");
                        Response.Redirect("dashbordHomepahe.aspx");
                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good Job!', 'Please login before proceed!', 'success')", true);
                        
                    }

                }
                else
                {
                    string check = "select Id,First_Name,Email,Mobile,U_location,Work_type,No_of_expeirence,rate_per_hour from users where Email =@Email and Password=@Password";
                    SqlCommand cmd = new SqlCommand(check, con);
                    cmd.Parameters.AddWithValue("@Email", txtlaid.Text.ToString());
                    cmd.Parameters.AddWithValue("@Password", txtlpswd.Text.ToString());
                    SqlDataReader read = cmd.ExecuteReader();

                    if (read.Read())
                    {
                        Session["id"] = read.GetValue(0).ToString();
                        Session["Frist_Name"] = read.GetValue(1).ToString();
                        Session["Email"] = read.GetValue(2).ToString();
                        Session["Mobile"] = read.GetValue(3).ToString();
                        Session["U_location"] = read.GetValue(4).ToString();
                        Session["Work_type"] = read.GetValue(5).ToString();
                        Session["No_of_expeirence"] = read.GetValue(6).ToString();
                        Session["rate_per_hour"] = read.GetValue(7).ToString();
                        //System.Windows.Forms.MessageBox.Show("Login as a user...!");
                        Response.Redirect("Mainpage.aspx");
                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good Job!', 'Please login before proceed!', 'success')", true);

                    }
                }
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("invalide password or user name");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error!', 'Invalide password or user name!', 'error')", true);
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please log Out before proceed!', 'info')", true);
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                Response.Redirect("Workesignup.aspx");
               
            }
        }

        protected void btncarpentry_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("bookcptr.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btnmason_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("bookmayson.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btngarden_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("BOOKGardenMaker.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btnplumber_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("bookPlumber.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btnpainter_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("bookpainter.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btnElectrician_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Frist_Name"] != null)
            {
                Response.Redirect("bookele.aspx");
            }
            else
            {
                //System.Windows.Forms.MessageBox.Show("Please Login Before Booking....!");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Info!', 'Please login before proceed!', 'info')", true);
            }
        }

        protected void btnsendmessage_Click(object sender, EventArgs e)
        {
            SqlConnection con = dbcon.getDbConnection();
            string insert_message = "Insert into contact_us (u_name,U_email,u_Message) VALUES('" + txtnamecontact.Text + "','" + txtemailcontact.Text + "','" + txtmessagecontact.Text + "')";
            SqlCommand cmd = new SqlCommand(insert_message, con);
            int t = cmd.ExecuteNonQuery();

            if (t > 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Thanks for Contact us!', 'success')", true);
            }

        }
    }

}