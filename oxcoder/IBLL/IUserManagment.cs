using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    interface IUserManagment
    {
        /// <summary>
        /// 根据id获取用户
        /// </summary>
        /// <param name="id">用户id</param>
        /// <returns></returns>
        IQueryable<user> GetUser(int id);


    }
}
