using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BugMateSystem.DAL;
using BugMateSystem.Entities;
using System.Data.SqlClient;
using System.Data;

namespace BugMateSystem.BLL
{
    public class Saved_projectController
    {
        public int? Save_Project(int? savedbyuserid, DateTime? savedate, string projectdescription, string projectstatus, bool projectactive, DateTime? nextiterationdate, string projectname, int? saveid = null)
        {
            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("save_project", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@saved_by_userid", SqlDbType.Int).Value = savedbyuserid;
                    cmd.Parameters.Add("@save_date", SqlDbType.DateTime).Value = savedate;
                    cmd.Parameters.Add("@project_description", SqlDbType.NVarChar).Value = projectdescription;
                    cmd.Parameters.Add("@project_status", SqlDbType.NVarChar).Value = projectstatus;
                    cmd.Parameters.Add("@project_active", SqlDbType.NVarChar).Value = projectactive;
                    cmd.Parameters.Add("@next_iteration_date", SqlDbType.DateTime).Value = nextiterationdate;
                    cmd.Parameters.Add("@project_name", SqlDbType.NVarChar).Value = projectname;
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
