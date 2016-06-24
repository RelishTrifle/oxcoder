using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;
using IDAL;
using SQLServerDAL;
using DALFactory;

namespace BLL
{
    public class Challenge : IChallenge
    {
        public IQueryable<challenge> GetAllChallenges()
        {
            IChallengeDao dao = DataAccess.CreateChallengeDao();
            return dao.GetChallenges();
        }
    }
}
