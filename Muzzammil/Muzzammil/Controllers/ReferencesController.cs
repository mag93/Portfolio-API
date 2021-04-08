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
    public class ReferencesController : ControllerBase
    {
        private readonly IReferencesRepository _referencesRepository;
        public ReferencesController(IReferencesRepository referencesRepository)
        {
            _referencesRepository = referencesRepository;
        }

        [HttpGet]
        public ActionResult<References> GetReferences()
        {
            return Ok(_referencesRepository.References);
        }

    }
}
