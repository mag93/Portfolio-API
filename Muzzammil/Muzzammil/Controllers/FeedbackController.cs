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
    public class FeedbackController : ControllerBase
    {
        private readonly IFeedbackRepository _feedbackRepository;
        public FeedbackController(IFeedbackRepository feedbackRepository)
        {
            _feedbackRepository = feedbackRepository;
        }

        [HttpPost]
        public ActionResult<Feedback> Feedback(Feedback feedback)
        {
            if (ModelState.IsValid)
            {
                _feedbackRepository.AddFeedback(feedback);
                
                return Ok(_feedbackRepository.Get());
            }
            else
            {
                return NotFound();
            }
            
        }

    }
}
