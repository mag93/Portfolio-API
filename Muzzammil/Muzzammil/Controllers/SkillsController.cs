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
    public class SkillsController : ControllerBase
    {
        private readonly ISkillsRepository _skillsRepository;
        public SkillsController(ISkillsRepository skillsRepository)
        {
            _skillsRepository = skillsRepository;
        }

        [HttpGet]
        public ActionResult<Skills> GetSkills()
        {
            return Ok(_skillsRepository.Skills);
        }

    }
}
