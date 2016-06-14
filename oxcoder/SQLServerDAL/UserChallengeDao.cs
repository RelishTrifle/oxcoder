using System;
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
            System.Console.WriteLine("Insert!!!!!!!!!!");
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
