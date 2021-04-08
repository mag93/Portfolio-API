using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class SkillsRepository : ISkillsRepository
    {
        private readonly AppDBContext _context;
        public SkillsRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<Skills> Skills { get { return _context.Skills; } }
    }
}
