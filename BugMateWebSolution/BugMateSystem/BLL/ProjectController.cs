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
        public Project Create_Project(DateTime? datestarted, string projectstatus, bool projectactive, int? createdbyuserid, string projectname, int? projectleaderid, string projectdescription = null, DateTime? nextiterationdate = null)
        {
            using (var context = new BugMateContext())
            {
                IEnumerable<Project> results =
                context.Database.SqlQuery<Project>("create_project @project_name, @date_started, @project_description, @project_status, @project_active, @next_iteration_date, @created_by_userid, @project_leader_id",
                new SqlParameter("project_name", projectname), new SqlParameter("date_started", datestarted), new SqlParameter("project_description", projectdescription), new SqlParameter("project_status", projectstatus),
                new SqlParameter("project_active", projectactive), new SqlParameter("next_iteration_date", nextiterationdate), new SqlParameter("created_by_userid", createdbyuserid), new SqlParameter("project_leader_id", projectleaderid));

                return results.First();
            }
        }
    }
}
