using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("Saved_project")]
    public class Saved_project
    {
        [Key]
        public int Save_id { get; set; }
        public int Saved_by_userid { get; set; }
        public DateTime Save_date { get; set; }
        public string Project_description { get; set; }
        public string Project_status { get; set; }
        public bool? Project_active { get; set; }
        public DateTime? Next_iteration_date { get; set; }
        public string Project_name { get; set; }
    }
}
