using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BugMateSystem.DAL;
using BugMateSystem.Entities;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace BugMateSystem.BLL
{
    public class User_infoController
    {
        public int? Check_Valid_User_Login(string username, string password)
        {
            using (var context = new BugMateContext())
            {
                int? result = context.Database.ExecuteSqlCommand("exec user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));
                //context.Database.ExecuteSqlCommand("user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));
                return result;
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
