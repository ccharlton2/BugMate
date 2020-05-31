using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("team_project")]
    public class Team_project
    {
        [Key]
        [Column(Order = 1)]
        public int Team_number { get; set; }
        [Key]
        [Column(Order = 2)]
        public int Project_number { get; set; }
    }
}
