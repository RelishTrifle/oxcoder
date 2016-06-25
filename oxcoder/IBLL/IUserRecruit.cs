using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface IUserRecruit
    {
        /// <summary>
        /// 根据筛选条件获取该用户已接受的挑战
        /// </summary>
        /// <param name="user_id">用户ID</param>
        /// <param name="isHistory">是否是历史挑战：0当前正在进行的，1历史挑战</param>
        /// <param name="userState">0未完成，1已通过，2不通过</param>
        /// <returns>挑战的泛型集合</returns>
        IQueryable<v_recruit> GetHisChallenges(int user_id, int isHistory, int userState);

        IQueryable<v_recruit> GetChallenge(int id);

        /// <summary>
        /// 用户点击挑战结果，进入挑战结果页面，显示挑战结果
        /// </summary>
        /// <param name="user_challenge_id">用户挑战表中该记录的id值</param>
        /// <returns>用户挑战实体类</returns>
        user_challenge GetHisResult(int user_challenge_id);

        /// <summary>
        /// 用户放弃当前挑战
        /// </summary>
        /// <param name="user_challenge_id">用户挑战表中该记录的id值</param>
        void AbandonRecruit(int user_challenge_id);

        /// <summary>
        /// 用户接受挑战，用户挑战表中新加一条记录
        /// </summary>
        /// <param name="user_id">用户id</param>
        /// <param name="challenge_id">挑战id</param>
        void AcceptChallenge(int user_id, int challenge_id);

        /// <summary>
        /// 用户开始挑战，覆盖以前的挑战记录，更新挑战结果
        /// </summary>
        /// <param name="result">用户挑战实体</param>
        void BeginRecruit(int recruit_id, int result);

        /// <summary>
        /// 获取指定挑战ID的所有子题目
        /// </summary>
        /// <param name="challenge_id">挑战ID</param>
        /// <returns>子题目的泛型集合</returns>
        IList<item> GetItems(int challenge_id);

    }
}
