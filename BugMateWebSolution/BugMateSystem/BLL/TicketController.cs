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
    public class TicketController
    {
        public List<Project> Project_List()
        {
            using (var context = new BugMateContext())
            {
                return context.Projects.ToList();
            }
        }
    }

}
