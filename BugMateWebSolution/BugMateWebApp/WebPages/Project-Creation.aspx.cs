using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BugMateSystem.BLL;

namespace BugMateWebApp.WebPages
{
    public partial class Project_Creation : System.Web.UI.Page
    {
        List<string> _usermsgs = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Clear_Messages(sender, e);
        }

        protected void CreateProject_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    ProjectController sysmgr = new ProjectController();
                    sysmgr.Create_Project(DateTime.UtcNow, ProjectMaintenance.Checked ? "Maintenance" : "InDevelopment", true, (int?)Session["Userid"] == null ? 19 : (int?)Session["Userid"], ProjectName.Text,
                    (int?)Session["Userid"] == null ? 19 : (int?)Session["Userid"], ProjectDescription.Text, DateTime.Parse(NextIterationDate.Value));

                    _usermsgs.Add("Project has been successfully created.");
                    LoadMessageDisplay(_usermsgs, "alert alert-success");
                }
                catch (Exception ex)
                {
                    _usermsgs.Add(ex.Message);
                    LoadMessageDisplay(_usermsgs, "alert alert-danger");
                }
            }
        }

        protected void SaveProject_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Saved_projectController sysmgr = new Saved_projectController();
                    sysmgr.Save_Project((int?)Session["Userid"] == null ? 19 : (int?)Session["Userid"], DateTime.UtcNow, ProjectDescription.Text, ProjectMaintenance.Checked ? "Maintenance" : "InDevelopment", true, DateTime.Parse(NextIterationDate.Value), ProjectName.Text);

                    _usermsgs.Add("Project has been saved successfully.");
                    LoadMessageDisplay(_usermsgs, "alert alert-success");
                }
                catch (Exception ex)
                {
                    _usermsgs.Add(GetInnerException(ex).ToString());
                    LoadMessageDisplay(_usermsgs, "alert alert-danger");
                    //_usermsgs.Add(ex.Message);
                    //LoadMessageDisplay(_usermsgs, "alert alert-danger");
                }
            }
        }

        protected void LoadMessageDisplay(List<string> errormsglist, string cssclass)
        {
            UserMessages.CssClass = cssclass;
            UserMessages.DataSource = errormsglist;
            UserMessages.DataBind();
        }

        protected void Clear_Messages(object sender, EventArgs e)
        {
            _usermsgs.Clear();
            LoadMessageDisplay(_usermsgs, "alert alert-info");
        }

        protected Exception GetInnerException(Exception ex)
        {
            while (ex.InnerException != null)
            {
                ex = ex.InnerException;
            }
            return ex;
        }
    }
}