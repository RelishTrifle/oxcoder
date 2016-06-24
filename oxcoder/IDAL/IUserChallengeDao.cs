using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    /// <summary>
    /// 挑战用户表（user_challenge）的数据访问层接口
    /// </summary>
    public interface IUserChallengeDao
    {
        /// <summary>
        /// 获取正在进行的/历史挑战
        /// </summary>
        /// <param name="user_id">当前用户id</param>
        /// <param name="isHistory">0：正在进行的挑战，1：历史挑战</param>
        /// <returns>正在进行的/历史挑战集合</returns>
        IList<user_challenge> GetHisChallenges(int user_id, int isHistory);

        /// <summary>
        /// 获取未完成/通过/未通过的挑战
        /// </summary>
        /// <param name="user_id">当前用户id</param>
        /// <param name="isHistory">0：正在进行的挑战，1：历史挑战</param>
        /// <param name="userState">0：未完成，1：通过的，2：不通过的</param>
        /// <returns>未完成/通过/未通过的挑战集合</returns>
        IList<user_challenge> GetHisChallengeByState(int user_id, int isHistory, int userState);

        /// <summary>
        /// 根据ID号获取用户挑战表实体
        /// </summary>
        /// <param name="user_challenge_id"></param>
        /// <returns></returns>
        user_challenge GetChallengeById(int user_challenge_id);

        /// <summary>
        /// 插入一条新的用户挑战记录
        /// </summary>
        /// <param name="record">用户挑战实体</param>
        void Insert(user_challenge record);

        /// <summary>
        /// 获取某一挑战的具体信息
        /// </summary>
        /// <param name="user_challenge_id">用户挑战表中的id值</param>
        /// <returns>用户挑战实体</returns>
        user_challenge GetHisChallenge(int user_challenge_id);

        /// <summary>
        /// 取消用户的挑战
        /// </summary>
        /// <param name="user_challenge_id">用户挑战表中的id值</param>
        void DeleteChallenge(int user_challenge_id);


        /// <summary>
        /// 更新该挑战信息
        /// </summary>
        /// <param name="result">用户挑战实体</param>
        void UpdateChallenge(user_challenge result);
        
    }
}
