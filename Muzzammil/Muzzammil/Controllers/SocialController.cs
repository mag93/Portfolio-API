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
    public class SocialController : ControllerBase
    {
        private readonly ISocialRepository _socialRepository;
        public SocialController(ISocialRepository socialRepository)
        {
            _socialRepository = socialRepository;
        }

        public ActionResult<Social> GetSocials()
        {
            return Ok(_socialRepository.Socials);
        }

        [HttpGet("{id}")]
        public ActionResult<Social> GetSocialById(int id)
        {
            var social = _socialRepository.GetSocial(id);
            if (social != null)
            {
                return Ok(social);

            }
            else
            {
                return NotFound("Item does not exist");
            }
        }
    }
}
