using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("Project_member")]
    public class Project_member
    {
        [Key]
        public int Userid { get; set; }
        [Key]
        public int Project_number { get; set; }
    }
}
