using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using BLL;

namespace BLLFactory
{
    public class BusinessLogic
    {
        public static IUserRecruit CreateUserRecruit()
        {
            return new UserRecruit();
        }
    }
}
