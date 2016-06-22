using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;
using DALFactory;
using IDAL;

namespace BLL
{
    public class UserRecruit : IUserRecruit
    {
        public void AcceptChallenge(int user_id, int challenge_id)
        {
            user_challenge record = new user_challenge();
            record.userId = user_id;
            record.challengeId = challenge_id;

            IUserChallengeDao dao = DataAccess.CreateUserChallengeDao();
            dao.Insert(record);

        }

        public IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState)
        {
            IVRecruitDao dao = DataAccess.CreateVRecruitDao();
            return dao.GetHisChallenges(user_id, isHistory, userState);
        }


        public user_challenge GetHisResult(int user_challenge_id)
        {
            return null;
        }

        public void AbandonRecruit(int user_challenge_id)
        {

        }

        public void BeginRecruit(user_challenge result)
        {

        }

    }
}
