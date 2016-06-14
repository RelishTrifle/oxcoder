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
        /// 获取该用户正在进行的/历史的挑战
        /// </summary>
        /// <param name="user_id">当前用户id</param>
        /// <param name="isHistory">0：正在进行的挑战，1：历史挑战</param>
        /// <returns>该用户正在进行的/历史挑战集合</returns>
        IList<user_challenge> GetHisChallengeList(int user_id, int isHistory);

        /// <summary>
        /// 获取该用户未完成/通过/未通过的挑战
        /// </summary>
        /// <param name="user_id">当前用户id</param>
        /// <param name="isHistory">0：正在进行的挑战，1：历史挑战</param>
        /// <param name="userState">0：未完成，1：通过的，2：不通过的</param>
        /// <returns>未完成/通过/未通过的挑战集合</returns>
        IList<user_challenge> GetHisChallengeListByState(int user_id, int isHistory, int userState);

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
        void BeginRecruit(user_challenge result);
    }
}
