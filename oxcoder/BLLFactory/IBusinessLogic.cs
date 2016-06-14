using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;

namespace BLLFactory
{
    public interface IBusinessLogic
    {
        /// <summary>
        /// 获取用户挑战的业务实例
        /// </summary>
        /// <returns>返回用户挑战业务实例</returns>
        static IUserRecruit CreateUserRecruit();
    }
}
