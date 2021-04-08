using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public interface IEducationRepository
    {
        IEnumerable<Education> Education {get;}

    }
}
