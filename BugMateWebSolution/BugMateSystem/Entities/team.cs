using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("team")]
    public class Team
    {
        [Key]
        public int Team_number { get; set; }
        public string Team_name { get; set; }
        public string Team_description { get; set; }
        public DateTime Date_created { get; set; }
        public int? Team_leader { get; set; }
    }
}
