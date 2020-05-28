using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("ticket")]
    public class Ticket
    {
        [Key]
        public int Ticket_number { get; set; }
        public DateTime Creation_date { get; set; }
        public string Error_description { get; set; }
        public string Suggested_solution { get; set; }
        public bool Ticket_active { get; set; }
        public int Project_number { get; set; }
        public string Ticket_type { get; set; }
        public string Ticket_priority { get; set; }
        public string Error_frequency { get; set; }
        public string Error_code { get; set; }
        public int? Created_by_userid { get; set; }
    }
}
