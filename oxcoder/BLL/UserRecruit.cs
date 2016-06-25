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
            record.userState = 0;
            record.isHistory = 0;

            IUserChallengeDao dao = DataAccess.CreateUserChallengeDao();
            if(dao.Insert(record))
            {
                IChallengeDao cdao = DataAccess.CreateChallengeDao();
                cdao.UpdateNum(challenge_id);
            }

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
            IUserChallengeDao dao = DataAccess.CreateUserChallengeDao();
            dao.DeleteChallenge(user_challenge_id);
        }

        public void BeginRecruit(int recruit_id, int result)
        {
            IUserChallengeDao dao = DataAccess.CreateUserChallengeDao();
            dao.UpdateChallenge(recruit_id,result);
        }

        public IList<item> GetItems(int challenge_id)
        {
            IChallengeDao dao = DataAccess.CreateChallengeDao();
            IItemDao itemDao = DataAccess.CreateItemDao();
            //解析题目id集合字符串
            string[] itemIds = dao.GetItemsIds(challenge_id).Split('#');
            IList<item> items = new List<item>();
            foreach (string s in itemIds)
            {
                int id = Convert.ToInt32(s);
                items.Add(itemDao.GetItem(id));
            }

            return items;
        }

        public IQueryable<v_recruit> GetChallenge(int id)
        {
            IVRecruitDao dao = DataAccess.CreateVRecruitDao();
            return dao.GetChallenge(id);
        }

    }
}
