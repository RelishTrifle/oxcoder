using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface IUserManagment
    {
        /// <summary>
        /// 验证登陆状态
        /// </summary>
        /// <param name="userName">用户名</param>
        /// <param name="password">用户密码</param>
        /// <returns>是否验证成功</returns>
        int Login(string userName,string password);


    }
}
