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
    public class Admin : IAdmin
    {
        public IQueryable<company> GetAllCompanys()
        {
            IAdmin admin = DataAccess.CreateCompanyDao();
        }
    }
}
