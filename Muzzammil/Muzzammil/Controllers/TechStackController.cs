using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Muzzammil.Models;
using Muzzammil.Models.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TechStackController : ControllerBase
    {
        private readonly ITechStackRepository _techStackRepository;
        public TechStackController(ITechStackRepository techStackRepository)
        {
            _techStackRepository = techStackRepository;
        }

        [HttpGet]
        public ActionResult<TechStack> GetTechStack()
        {
            var techstack = _techStackRepository.TechStacks.ToList();
            if (techstack != null)
            {
                return Ok(techstack);
                Console.WriteLine(techstack.Count);

            }
            else
            {
                return NotFound();
            }
        }
    }
}
