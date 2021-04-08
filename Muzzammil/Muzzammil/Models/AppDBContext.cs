using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models
{
    public class AppDBContext:DbContext
    {
        public AppDBContext(DbContextOptions<AppDBContext> options) : base(options)
        {

        }
        public DbSet<ContactDetails> contactDetails { get; set; }
        public DbSet<Education> Education { get; set; }
        public DbSet<Experience> Experiences { get; set; }
        public DbSet<References> References { get; set; }
        public DbSet<Skills> Skills { get; set; }
        public DbSet<Social> Socials { get; set; }
        public DbSet<TechStack> Stacks { get; set; }
        public DbSet<Feedback> Feedbacks { get; set; }

    }
}
