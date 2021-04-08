using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public interface ISkillsRepository
    {
        IEnumerable<Skills> Skills { get; }
    }
}
