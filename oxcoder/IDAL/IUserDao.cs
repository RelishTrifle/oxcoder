﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    interface IUserDao
    {
        /// <summary>
        /// 获取某个用户实体
        /// </summary>
        /// <param name="id"></param>
        /// <returns>用户实体</returns>
        user GetUser(int id);

        /// <summary>
        /// 获取全部用户
        /// </summary>
        /// <returns>用户实体列表</returns>
        IList<user> GetUsers();
    }
}
