using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public class UserDao : IUserDao
    {
        public user GetUserByName(string userName)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            UserDataContext ud = new UserDataContext(connection);
            return ud.user.SingleOrDefault<user>(c => c.userName == userName);
        }

        public user GetUserById(int id)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            UserDataContext ud = new UserDataContext(connection);
            return ud.user.SingleOrDefault<user>(c => c.id == id);
        }
    }
}
