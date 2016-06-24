using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IChallengeDao
    {
        /// <summary>
        /// 获取该挑战下子题目字段
        /// </summary>
        /// <param name="challenge_id">挑战ID</param>
        /// <returns>子题目字段</returns>
        string GetItemsIds(int challenge_id);

        /// <summary>
        /// 获取所有挑战
        /// </summary>
        /// <returns>所有挑战集合</returns>
        IQueryable<challenge> GetChallenges();
    }
}
