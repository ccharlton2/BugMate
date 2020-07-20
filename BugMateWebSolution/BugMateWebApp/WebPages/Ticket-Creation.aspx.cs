using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BugMateSystem.BLL;
using BugMateSystem.Entities;
using System.Data.SqlClient;
using System.Data;

namespace BugMateWebApp.WebPages
{
    public partial class Ticket_Creation : System.Web.UI.Page
    {
        List<string> _usermsgs = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Clear_Messages(sender, e);
            Load_Projects(19);
        }

        protected void Load_Projects(int? userid)
        {
            try
            {
                ProjectController sysmgr = new ProjectController();
                DataTable info = null;
                info = sysmgr.Project_By_Userid(19);
                //info.Sort((x, y) => x.Project_name.CompareTo(y.Project_name));
                ProjectNameSelect.DataSource = info;
                ProjectNameSelect.DataTextField = nameof(Project.Project_name);
                ProjectNameSelect.DataValueField = nameof(Project.Project_number);
                ProjectNameSelect.DataBind();
                ProjectNameSelect.Items.Insert(0, "Select...");
            }
            catch (Exception ex)
            {
                _usermsgs.Add(GetInnerException(ex).ToString());
                LoadMessageDisplay(_usermsgs, "alert alert-danger");
            }
        }

        protected void CreateTicketButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    TicketController sysmgr = new TicketController();
                    sysmgr.Create_Ticket(DateTime.UtcNow, BugDescription.InnerText, SuggestedSolution.InnerText, 1, ProjectNameSelect.SelectedValue, BugTypeSelect.SelectedValue, PrioritySelect.SelectedValue)

                    _usermsgs.Add("Ticket has been successfully created.");
                    LoadMessageDisplay(_usermsgs, "alert alert-success");
                }
                catch (Exception ex)
                {
                    _usermsgs.Add(ex.Message);
                    LoadMessageDisplay(_usermsgs, "alert alert-danger");
                }
            }
        }

        protected void SaveTicketButton_Click(object sender, EventArgs e)
        {

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