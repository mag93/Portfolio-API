using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class TechStackRepository : ITechStackRepository
    {
        private readonly AppDBContext _context;
        public TechStackRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<TechStack> TechStacks
        {
            get { return _context.Stacks; }
        }
    }
}
