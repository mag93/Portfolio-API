using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class SocialRepository : ISocialRepository
    {
        private readonly AppDBContext _context;
        public SocialRepository(AppDBContext context)
        {
            _context = context;
        }
        public IEnumerable<Social> Socials
        {
            get { return _context.Socials; } }

        public Social GetSocial(int id)
        {
            return _context.Socials.FirstOrDefault(s => s.Id == id);
        }
    }
}
