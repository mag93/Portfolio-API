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
    public class ExperienceController : ControllerBase
    {
        private readonly IExperienceRepository _experienceRepository;
        public ExperienceController(IExperienceRepository experienceRepository)
        {
            _experienceRepository = experienceRepository;
        }

        public ActionResult<Experience> GetExperience()
        {
            return Ok(_experienceRepository.Experiences);
        }

    }
}
