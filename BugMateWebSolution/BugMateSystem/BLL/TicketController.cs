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
        public int? Create_Ticket(DateTime? creationdate, string errordescription, string suggestedsolution, bool ticketactive, int? projectnumber, string tickettype, string ticketpriority, string errorfrequency, string errorcode, int? createdbyuserid)
        {
            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("create_ticket", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@project_name", SqlDbType.DateTime).Value = creationdate;
                    cmd.Parameters.Add("@date_started", SqlDbType.NVarChar).Value = errordescription;
                    cmd.Parameters.Add("@project_description", SqlDbType.NVarChar).Value = suggestedsolution;
                    cmd.Parameters.Add("@project_status", SqlDbType.Bit).Value = ticketactive;
                    cmd.Parameters.Add("@project_active", SqlDbType.Int).Value = projectnumber;
                    cmd.Parameters.Add("@next_iteration_date", SqlDbType.NVarChar).Value = tickettype;
                    cmd.Parameters.Add("@created_by_userid", SqlDbType.NVarChar).Value = ticketpriority;
                    cmd.Parameters.Add("@project_leader_id", SqlDbType.NVarChar).Value = errorfrequency;
                    cmd.Parameters.Add("@project_leader_id", SqlDbType.NVarChar).Value = errorcode;
                    cmd.Parameters.Add("@project_leader_id", SqlDbType.Int).Value = createdbyuserid;

                    con.Open();
                    object result = cmd.ExecuteScalar();
                    con.Close();

                    return (int?)result;
                }
            }
        }
    }

}
