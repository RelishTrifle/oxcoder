using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;
using IBLL;

namespace BLLFactory
{
    public class BusinessAccess
    {
        public static IChallenge CreateChallenge()
        {
            return new Challenge();
        }

        public static IUserRecruit CreateUserRecruit()
        {
            return new UserRecruit();
        }

        public static IUserManagment CreateUserManagment()
        {
            return new UserManagment();
        }
    }
}
