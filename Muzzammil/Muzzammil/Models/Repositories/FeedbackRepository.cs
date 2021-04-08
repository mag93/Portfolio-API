using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Muzzammil.Models.Repositories
{
    public class FeedbackRepository : IFeedbackRepository
    {
        private readonly AppDBContext _appDbContext;

        public FeedbackRepository(AppDBContext appDbContext)
        {
            _appDbContext = appDbContext;
        }
        public void AddFeedback(Feedback feedback)
        {
            _appDbContext.Feedbacks.Add(feedback);
            _appDbContext.SaveChanges();
        }

        public List<Feedback> Get()
        {
            return _appDbContext.Feedbacks.ToList();
        }
    }
}
