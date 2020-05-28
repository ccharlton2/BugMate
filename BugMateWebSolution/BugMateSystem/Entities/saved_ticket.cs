using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("saved_ticket")]
    public class Saved_ticket
    {
        [Key]
        public int Save_id { get; set; }
        public int Saved_by_userid { get; set; }
        public DateTime Save_date { get; set; }
        public string Error_description { get; set; }
        public string Suggested_solution { get; set; }
        public int? Project_number { get; set; }
        public string Ticket_type { get; set; }
        public string Ticket_priority { get; set; }
        public string Error_frequency { get; set; }
        public string Error_code { get; set; }
    }
}
