using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
   public class CompanyDao : ICompanyDao
    {
        public IQueryable<company> GetCompanys()
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            CompanyDataContext cdc = new CompanyDataContext(connection);
            return cdc.company;
        }
    }
}
