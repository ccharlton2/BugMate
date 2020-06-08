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
        public Project Create_Project(DateTime? datestarted, string projectstatus, bool projectactive, int createdbyuserid, string projectname, int projectleaderid, string projectdescription = null, DateTime? nextiterationdate = null)
        {
            using (var context = new BugMateContext())
            {
                IEnumerable<Project> results =
                context.Database.SqlQuery<Project>("create_project @project_name, @date_started, @project_description, @project_status, @project_active, @next_iteration_date, @created_by_userid, @project_leader_id",
                new SqlParameter("ProgramID", programid), new SqlParameter("CourseID", courseid), new SqlParameter("CourseID", courseid), new SqlParameter("CourseID", courseid),
                new SqlParameter("CourseID", courseid), new SqlParameter("CourseID", courseid), new SqlParameter("CourseID", courseid), new SqlParameter("CourseID", courseid));

                return results.First();
            }
        }
    }
}
