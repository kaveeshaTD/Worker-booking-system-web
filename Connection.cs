using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace ControlSys
{
    public class Connection
    {
        string connection = "Data Source=DESKTOP-CNC0FHC;Initial Catalog=construction;Integrated Security=True";

        public SqlConnection getDbConnection()
        {
            SqlConnection newcon = new SqlConnection(connection);
            newcon.Open();
            return newcon;
        }
    }

   
}