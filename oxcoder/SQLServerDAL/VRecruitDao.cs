using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public class VRecruitDao : IVRecruitDao
    {
        public IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            VRecruitDataContext rdc = new VRecruitDataContext(connection);
            IQueryable<v_recruit> result = null;
            if (userState >= 0)
            {
                result = from r in rdc.v_recruit where r.userId == user_id && r.isHistory >= isHistory && r.userState == userState select r;
            }
            else
            {
                result = from r in rdc.v_recruit where r.userId == user_id && r.isHistory >= isHistory && r.userState >= userState select r;
            }
           
            return result;
        }
        
    }
}
