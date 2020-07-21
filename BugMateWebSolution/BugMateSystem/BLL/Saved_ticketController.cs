using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BugMateSystem.DAL;
using System.Data.SqlClient;
using System.Data;

namespace BugMateSystem.BLL
{
    public class Saved_ticketController
    {
        public int? Save_Ticket(DateTime? savedate, string errordescription, string suggestedsolution, int? projectnumber, string tickettype, string ticketpriority, string errorfrequency, string errorcode, int? savedbyuserid, int? saveid = null)
        {
            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("save_ticket", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@save_date", SqlDbType.DateTime).Value = savedate;
                    cmd.Parameters.Add("@error_description", SqlDbType.NVarChar).Value = errordescription;
                    cmd.Parameters.Add("@suggested_solution", SqlDbType.NVarChar).Value = suggestedsolution;
                    cmd.Parameters.Add("@project_number", SqlDbType.Int).Value = projectnumber;
                    cmd.Parameters.Add("@ticket_type", SqlDbType.NVarChar).Value = tickettype;
                    cmd.Parameters.Add("@ticket_priority", SqlDbType.NVarChar).Value = ticketpriority;
                    cmd.Parameters.Add("@error_frequency", SqlDbType.NVarChar).Value = errorfrequency;
                    cmd.Parameters.Add("@error_code", SqlDbType.NVarChar).Value = errorcode;
                    cmd.Parameters.Add("@saved_by_userid", SqlDbType.Int).Value = savedbyuserid;
                    cmd.Parameters.Add("@save_id", SqlDbType.Int).Value = saveid;

                    con.Open();
                    object result = cmd.ExecuteScalar();
                    con.Close();

                    return (int?)result;
                }
            }
        }
    }
}
