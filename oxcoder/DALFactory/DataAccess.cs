﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using SQLServerDAL;

namespace DALFactory
{
    /// <summary>
    /// DataAccess,获取XXXDao,供BLL层调用
    /// </summary>
    public class DataAccess
    {
        public static IUserChallengeDao CreateUserChallengeDao() {
            return new UserChallengeDao();
        }
    }
}
