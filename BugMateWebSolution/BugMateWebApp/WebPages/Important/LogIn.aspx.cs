using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Validation;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core;
using BugMateSystem.BLL;
using BugMateSystem.Entities;

namespace BugMateWebApp.WebPages.Important
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserSignInButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    User_infoController sysmgr = new User_infoController();
                    int? userid = sysmgr.Check_Valid_User_Login(UserEmail.Text, UserPassword.Text).Userid;

                    if (userid == null)
                    {
                        ErrorMessage.Text = "Invalid user.";
                    }
                    else
                    {
                        Session["UserId"] = userid;
                        Response.Redirect("Default.aspx");
                    }

                }
                catch (Exception ex)
                {

                    ErrorMessage.Text = GetInnerException(ex).ToString();
                }
            }
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