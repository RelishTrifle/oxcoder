using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Configuration;

namespace SQLServerDAL
{
    public class UserDao : IUserDao
    {
        private String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public user GetUserByName(string userName)
        {
            UserDataContext ud = new UserDataContext(connection);
            return ud.user.SingleOrDefault<user>(c => c.userName == userName);
        }

        public user GetUserById(int id)
        {
            UserDataContext ud = new UserDataContext(connection);
            return ud.user.SingleOrDefault<user>(c => c.id == id);
        }
    }
}
