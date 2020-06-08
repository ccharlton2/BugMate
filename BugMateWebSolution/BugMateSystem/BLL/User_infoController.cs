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
using System.Runtime.InteropServices.WindowsRuntime;

namespace BugMateSystem.BLL
{
    public class User_infoController
    {
        public int? Check_Valid_User_Login(string username, string password)
        {
            using (var context = new BugMateContext())
            {
                //int? result = context.Database.ExecuteSqlCommand("user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));
                //context.Database.ExecuteSqlCommand("user_login @username, @password", new SqlParameter("username", username), new SqlParameter("password", password));

                using (SqlConnection con = new SqlConnection(new BugMateContext().Database.Connection.ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("user_login", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = username;
                        cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;

                        con.Open();
                        object result = cmd.ExecuteScalar();
                        con.Close();

                        return (int?)result;
                    }
                }
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
