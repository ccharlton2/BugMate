using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BugMateSystem.DAL;
using BugMateSystem.Entities;
using System.ComponentModel;
using System.Data.SqlClient;

namespace BugMateSystem.BLL
{
    public class User_infoController
    {
        public User_info Check_Valid_User_Login(string username, string password)
        {
            using (var context = new BugMateContext())
            {
                IEnumerable<User_info> results = context.Database.SqlQuery<User_info>("user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));

                return results.Single();
            }
        }
    }
}
