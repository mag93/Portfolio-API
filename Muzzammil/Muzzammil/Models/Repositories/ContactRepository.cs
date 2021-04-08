using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class ContactRepository : IContactRepository
    {
        private readonly AppDBContext _context;
        public ContactRepository(AppDBContext context)
        {
            _context = context;
        }
        public ContactDetails ContactDetails()
        {
            return _context.contactDetails.First();
        }
    }
}
