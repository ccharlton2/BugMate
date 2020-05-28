using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("Project")]
    public class Project
    {
        [Key]
        public int Project_number { get; set; }
        public DateTime Date_started { get; set; }
        public string Project_description { get; set; }
        public string Project_status { get; set; }
        public bool Project_active { get; set; }
        public DateTime? Next_iteration_date { get; set; }
        public int Created_by_userid { get; set; }
        public string Project_name { get; set; }
        public int Project_leader_id { get; set; }
    }
}
