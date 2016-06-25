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
using System.Security.Cryptography;

namespace BLL
{
    public class UserManagment : IUserManagment 
    {
        public int Login(string userName,string password)
        {
            IUserDao dao = DataAccess.CreateUserDao();
            user us = new user();
            us = dao.GetUserByName(userName);
            //md5加密
            MD5 md5 = new MD5CryptoServiceProvider();
            if (us == null)
            {
                return -1;
            }
            else if (us.del == 0)
            {
                //用户被删除
                return -1;
            }
            else
            {
                //用户存在
                //md5加密
                byte[] byteResult = md5.ComputeHash(UTF8Encoding.Default.GetBytes(password + us.salt));
                //转换成string
                string stringResult = BitConverter.ToString(byteResult, 4, 8);
                //去掉字符串中-连接符
                stringResult = stringResult.Replace("-", "");
                if (us.password == stringResult)
                {
                    return us.id;
                }
                return -1;
            }
        }

        public int GetRole(int id)
        {
            IUserDao dao = DataAccess.CreateUserDao();user us = new user();
            us = dao.GetUserById(id);
            if (us == null)
            {
                return 0;
            }
            else
            {
                return us.role;
            }
        }

    }
}
