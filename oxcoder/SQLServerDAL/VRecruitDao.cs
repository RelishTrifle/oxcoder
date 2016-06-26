using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Configuration;


namespace SQLServerDAL
{
    public class VRecruitDao : IVRecruitDao
    {
        private String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState)
        {
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

        public IQueryable<v_recruit> GetChallenge(int id)
        {
            VRecruitDataContext rdc = new VRecruitDataContext(connection);

            IQueryable<v_recruit> view = from v in rdc.v_recruit where v.recruit_id == id select v;
            return view;
        }
        
    }
}
