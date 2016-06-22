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

        public user_challenge GetHisChallenge(int user_challenge_id)
        {
            return null;
        }

        public void DeleteChallenge(int user_challenge_id)
        {

        }

        public void UpdateChallenge(user_challenge result)
        {

        }
    }
}
