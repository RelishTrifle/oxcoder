using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICompanyChallengeDao
    {
        //List<String> GetOngoChallengesItem(challenge c);

        // 正在进行的挑战
        String[,] GetOngoChallenges();
        
        // 从每个挑战获取对应的题目
        //IQueryable<item> GetItems();

        void SaveChallenge(challenge c);

        List<item> getItems(int level, string lang);
    }
}
