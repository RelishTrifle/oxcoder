using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public class UserChallengeDao : IUserChallengeDao
    {
        public void Insert(user_challenge record)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            udc.user_challenge.InsertOnSubmit(record);
            udc.SubmitChanges();
        
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
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            return udc.user_challenge.Single<user_challenge>(c => c.id == user_challenge_id);
        }

        public user_challenge GetHisChallenge(int user_challenge_id)
        {
            return null;
        }

        public void DeleteChallenge(int user_challenge_id)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            UserChallengeDataContext udc = new UserChallengeDataContext(connection);
            user_challenge uc = udc.user_challenge.Single<user_challenge>(c => c.id == user_challenge_id);
            udc.user_challenge.DeleteOnSubmit(uc);
            udc.SubmitChanges();
        }

        public void UpdateChallenge(user_challenge result)
        {

        }
    }
}
