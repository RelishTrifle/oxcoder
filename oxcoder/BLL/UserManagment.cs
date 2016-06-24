using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;
using IDAL;
using SQLServerDAL;
using DALFactory;

namespace BLL
{
    public class UserManagment : IUserManagment 
    {
        public int Login(string userName,string password)
        {
            IUserDao dao = DataAccess.CreateUserDao();
            user us = new user();
            us = dao.GetUserByName(userName);
            if (us == null)
            {
                return -1;
            }
            else if (us.password == password)
            {
                return us.id;
            }
            else
            {
                return -1;
            }
        }

    }
}
