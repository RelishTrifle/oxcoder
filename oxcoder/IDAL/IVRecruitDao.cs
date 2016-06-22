using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IVRecruitDao
    {
        IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState);
    }
}
