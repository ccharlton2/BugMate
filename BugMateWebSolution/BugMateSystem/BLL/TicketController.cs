using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BugMateSystem.DAL;
using BugMateSystem.Entities;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.InteropServices.WindowsRuntime;

namespace BugMateSystem.BLL
{
    public class TicketController
    {
        public int? Create_Ticket(DateTime? creationdate, string errordescription, string suggestedsolution, bool ticketactive, int? projectnumber, string tickettype, string ticketpriority, string errorfrequency, string errorcode, int? createdbyuserid, int? saveid = null)
        {
            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("create_ticket", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@creation_date", SqlDbType.DateTime).Value = creationdate;
                    cmd.Parameters.Add("@error_description", SqlDbType.NVarChar).Value = errordescription;
                    cmd.Parameters.Add("@suggested_solution", SqlDbType.NVarChar).Value = suggestedsolution;
                    cmd.Parameters.Add("@ticket_active", SqlDbType.Bit).Value = ticketactive;
                    cmd.Parameters.Add("@project_number", SqlDbType.Int).Value = projectnumber;
                    cmd.Parameters.Add("@ticket_type", SqlDbType.NVarChar).Value = tickettype;
                    cmd.Parameters.Add("@ticket_priority", SqlDbType.NVarChar).Value = ticketpriority;
                    cmd.Parameters.Add("@error_frequency", SqlDbType.NVarChar).Value = errorfrequency;
                    cmd.Parameters.Add("@error_code", SqlDbType.NVarChar).Value = errorcode;
                    cmd.Parameters.Add("@created_by_userid", SqlDbType.Int).Value = createdbyuserid;
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
