using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICompanyDao
    {
        /// <summary>
        /// 获取全部公司
        /// </summary>
        /// <returns>返回全部公司列表</returns>
        IQueryable<company> GetCompanys();
    }
}
