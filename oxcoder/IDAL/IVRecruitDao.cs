using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IVRecruitDao
    {
        /// <summary>
        /// 根据条件获取用户挑战视图
        /// </summary>
        /// <param name="user_id">用户ID</param>
        /// <param name="isHistory">历史挑战</param>
        /// <param name="userState">用户通过状态</param>
        /// <returns>视图集合</returns>
        IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState);

        /// <summary>
        /// 根据ID获取用户挑战视图实体
        /// </summary>
        /// <param name="id">用户挑战表的ID</param>
        /// <returns>视图实体集合（只有一条记录）</returns>
        IQueryable<v_recruit> GetChallenge(int id);
    }
}
