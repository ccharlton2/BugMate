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
                var results = context.Database.SqlQuery<User_info>("user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));

                return results.First();
            }
        }
        public List<User_info> User_List()
        {
            using (var context = new BugMateContext())
            {
                return context.User_Infos.ToList();
            }
        }
        public User_info User_Find(int userid)
        {
            using (var context = new BugMateContext())
            {
                return context.User_Infos.Find(userid);
            }
        }
    }
}
