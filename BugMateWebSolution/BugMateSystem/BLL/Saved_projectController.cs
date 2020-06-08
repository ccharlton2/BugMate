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
        public Saved_project Save_Project(DateTime? savedate, string projectstatus, bool projectactive, int savedbyuserid, string projectname, string projectdescription = null, DateTime? nextiterationdate = null)
        {
            using (var context = new BugMateContext())
            {
                IEnumerable<Saved_project> results =
                context.Database.SqlQuery<Saved_project>("create_project @project_name, @date_started, @project_description, @project_status, @project_active, @next_iteration_date, @created_by_userid, @project_leader_id",
                new SqlParameter("project_name", projectname), new SqlParameter("save_date", savedate), new SqlParameter("project_description", projectdescription), new SqlParameter("project_status", projectstatus),
                new SqlParameter("project_active", projectactive), new SqlParameter("next_iteration_date", nextiterationdate), new SqlParameter("saved_by_userid", savedbyuserid));

                return results.First();
            }
        }
    }
}
