using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace BugMateSystem.Entities
{
    [Table("user_info")]
    public class User_info
    {
        [Key]
        public int? Userid { get; set; }
        public string Username { get; set; }
        public byte[] Password_hash { get; set; }
        public string First_name { get; set; }
        public string Last_name { get; set; }
        public string User_bio { get; set; }
        public DateTime? Last_online { get; set; }
        public int Team_number { get; set; }
        public bool User_active { get; set; }
        public string Roleid { get; set; }
        public string User_email { get; set; }
    }
}
