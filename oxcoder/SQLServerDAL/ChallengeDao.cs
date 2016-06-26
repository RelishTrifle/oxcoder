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
    public class ChallengeDao : IChallengeDao
    {
        private String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public string GetItemsIds(int challenge_id)
        {
            ChallengeDataContext cdc = new ChallengeDataContext(connection);

            challenge record = cdc.challenge.Single<challenge>(c => c.id == challenge_id);
            return record.items;
        }

        public IQueryable<challenge> GetChallenges()
        {
            ChallengeDataContext cdc = new ChallengeDataContext(connection);

            return cdc.challenge;
        }

        public void UpdateNum(int id)
        {
            ChallengeDataContext cdc = new ChallengeDataContext(connection);

            challenge challenge = cdc.challenge.Single<challenge>(c => c.id == id);
            challenge.num += 1;

            cdc.SubmitChanges();
        }
    }
}
