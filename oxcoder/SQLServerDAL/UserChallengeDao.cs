using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Configuration;

namespace SQLServerDAL
{
    public class UserChallengeDao : IUserChallengeDao
    {
        private String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public bool Insert(user_challenge record)
        {
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            try
            {
                udc.user_challenge.InsertOnSubmit(record);
                udc.SubmitChanges();
            }
            catch (Exception e)
            {
                return false;
            }
            return true;
        }

        public IList<user_challenge> GetHisChallenges(int user_id, int isHistory)
        {
            return null;
        }

        public IList<user_challenge> GetHisChallengeByState(int user_id, int isHistory, int userState)
        {
            return null;
        }

        public user_challenge GetChallengeById(int user_challenge_id)
        {
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            return udc.user_challenge.Single<user_challenge>(c => c.id == user_challenge_id);
        }

        public user_challenge GetHisChallenge(int user_challenge_id)
        {
            return null;
        }

        public void DeleteChallenge(int user_challenge_id)
        {
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            user_challenge uc = udc.user_challenge.Single<user_challenge>(c => c.id == user_challenge_id);
            udc.user_challenge.DeleteOnSubmit(uc);
            udc.SubmitChanges();
        }

        public void UpdateChallenge(int recruit_id, int result)
        {
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            user_challenge uc = udc.user_challenge.Single<user_challenge>(u => u.id == recruit_id);
            uc.highest = result;
            uc.userState = 1;
            udc.SubmitChanges();

        }
    }
}
