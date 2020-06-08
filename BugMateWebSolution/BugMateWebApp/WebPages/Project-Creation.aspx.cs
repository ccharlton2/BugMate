using BugMateSystem.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugMateWebApp.WebPages
{
    public partial class Project_Creation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateProject_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                YO.Text = Convert.ToDateTime(NextIterationDate.Value.ToString()).ToString("yyyyMMdd");
                //try
                //{
                //    ProjectController sysmgr = new ProjectController();
                //    sysmgr.Create_Project(DateTime.UtcNow, ProjectMaintenance.Checked ? "Maintenance" : "InDevelopment", true, (int)Session["Userid"], ProjectName.Text, (int)Session["Userid"], ProjectDescription.Text, DateTime.UtcNow);
                //}
                //catch (Exception)
                //{

                //    throw;
                //}
            }
        }

        protected void SaveProject_Click(object sender, EventArgs e)
        {

        }
    }
}