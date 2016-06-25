using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;
using IDAL;
using SQLServerDAL;
using DALFactory;

namespace BLL
{
    public class CompanyChallenge : ICompanyChallenge
    {
        ICompanyChallengeDao dao = DataAccess.CreateCompanyChallengeDao();
        
        public String[,] GetOngoChallenges()
        {
            return dao.GetOngoChallenges();
        }

        //public List<String> GetOngoChallengesItem(challenge c)
        //{
        //    return dao.GetOngoChallengesItem(c);
        //}

        public void NewChallenge(challenge c)
        {
            dao.SaveChallenge(c);
        }

        public List<item> getItems(int level, string lang)
        {
            return dao.getItems(level,lang);
        }
    }
}
