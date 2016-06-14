using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using SQLServerDAL;

namespace DALFactory
{
    public class DataAccess
    {
        public static IUserChallengeDao CreateUserChallengeDao() {
            return new UserChallengeDao();
        }
    }
}
