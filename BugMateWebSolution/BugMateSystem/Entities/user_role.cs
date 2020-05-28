using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("user_role")]
    public class User_role
    {
        [Key]
        public string Roleid { get; set; }
        public string Role_name { get; set; }
        public string Role_description { get; set; }
    }
}
