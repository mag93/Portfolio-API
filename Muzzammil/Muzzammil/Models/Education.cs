using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models
{
    public class Education
    {
        public int Id { get; set; }
        public DateTime DateStarted { get; set; }
        public DateTime DateEnded { get; set; }
        public string Institution { get; set; }
        public string Qualification { get; set; }

    }
}
