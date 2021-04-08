using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class EducationRepository : IEducationRepository
    {
        private readonly AppDBContext _context;
        public EducationRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<Education> Education
        {
            get { return _context.Education; }
        }
    }
}
