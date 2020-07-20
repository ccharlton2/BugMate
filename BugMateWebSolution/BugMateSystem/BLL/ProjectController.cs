using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using BugMateSystem.DAL;
using BugMateSystem.Entities;

namespace BugMateSystem.BLL
{
    public class ProjectController
    {
        public int? Create_Project(DateTime? datestarted, string projectstatus, bool projectactive, int? createdbyuserid, string projectname, int? projectleaderid, string projectdescription = null, DateTime? nextiterationdate = null)
        {
            //using (var context = new BugMateContext())
            //{
            //    IEnumerable<Project> results =
            //    context.Database.SqlQuery<Project>("create_project @project_name, @date_started, @project_description, @project_status, @project_active, @next_iteration_date, @created_by_userid, @project_leader_id",
            //    new SqlParameter("project_name", projectname), new SqlParameter("date_started", datestarted), new SqlParameter("project_description", projectdescription), new SqlParameter("project_status", projectstatus),
            //    new SqlParameter("project_active", projectactive), new SqlParameter("next_iteration_date", nextiterationdate), new SqlParameter("created_by_userid", createdbyuserid), new SqlParameter("project_leader_id", projectleaderid));

            //    return results.First();
            //}

            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("create_project", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@project_name", SqlDbType.NVarChar).Value = projectname;
                    cmd.Parameters.Add("@date_started", SqlDbType.DateTime).Value = datestarted;
                    cmd.Parameters.Add("@project_description", SqlDbType.NVarChar).Value = projectdescription;
                    cmd.Parameters.Add("@project_status", SqlDbType.NVarChar).Value = projectstatus;
                    cmd.Parameters.Add("@project_active", SqlDbType.NVarChar).Value = projectactive;
                    cmd.Parameters.Add("@next_iteration_date", SqlDbType.DateTime).Value = nextiterationdate;
                    cmd.Parameters.Add("@created_by_userid", SqlDbType.Int).Value = createdbyuserid;
                    cmd.Parameters.Add("@project_leader_id", SqlDbType.Int).Value = projectleaderid;

                    con.Open();
                    object result = cmd.ExecuteScalar();
                    con.Close();

                    return (int?)result;
                }
            }
        }
        public DataTable Project_By_Userid(int? userid)
        {
            //using (var context = new BugMateContext())
            //{
            //    IEnumerable<List<string>> results =
            //    context.Database.SqlQuery<List<string>>("find_project_by_user_id @userid", new SqlParameter("userid", userid));

            //    return results.Select<>
            //}
            using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("find_project_by_user_id", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@userid", SqlDbType.Int).Value = userid;
                    SqlDataAdapter sqladp = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sqladp.Fill(dt);

                    //con.Open();
                    //object result = cmd.ExecuteNonQuery();
                    //con.Close();

                    return dt;
                }
            }
        }
    }
}
