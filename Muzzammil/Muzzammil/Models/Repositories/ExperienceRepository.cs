using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class ExperienceRepository : IExperienceRepository
    {
        private readonly AppDBContext _context;
        public ExperienceRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<Experience> Experiences
        {
            get { return _context.Experiences; }
        }
    }
}
