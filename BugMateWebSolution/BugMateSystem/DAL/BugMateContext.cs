using BugMateSystem.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BugMateSystem.DAL
{
    internal class BugMateContext : DbContext
    {
        public BugMateContext()
        : base("name=BMDB")
        {
        }

        public DbSet<Project> Projects { get; set; }
        public DbSet<Project_member> Project_Members { get; set; }
        public DbSet<Saved_project> Saved_Projects { get; set; }
        public DbSet<Saved_ticket> Saved_Tickets { get; set; }
        public DbSet<Team> Teams { get; set; }
        public DbSet<Team_project> Team_Projects { get; set; }
        public DbSet<Ticket> Tickets { get; set; }
        public DbSet<User_info> User_Infos { get; set; }
        public DbSet<User_role> User_Roles { get; set; }
    }
}
