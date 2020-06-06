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
using System.Data.SqlClient;

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
                    int? userid = sysmgr.Check_Valid_User_Login(UserEmail.Text, UserPassword.Text);
                    //List<User_info> info = sysmgr.User_List();
                    //int userid = 19;

                    //var info = sysmgr.User_Find((int)userid);

                    if (userid == null)
                    {
                        ErrorMessage.Text = "Invalid user.";
                    }
                    else
                    {
                        Session["UserId"] = 1;
                        //Response.Redirect("../../Default.aspx");

                        Results.Text = userid.ToString();
                    }
                }
                catch (SqlException sqlex)
                {
                    ErrorMessage.Text = GetInnerException(sqlex).ToString();
                }
                catch (Exception ex)
                {

                    //ErrorMessage.Text = GetInnerException(ex).ToString();
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