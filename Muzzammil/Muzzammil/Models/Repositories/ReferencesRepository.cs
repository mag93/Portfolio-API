using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class ReferencesRepository : IReferencesRepository
    {
        private readonly AppDBContext _context;
        public ReferencesRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<References> References { get { return _context.References; } }
    }
}
