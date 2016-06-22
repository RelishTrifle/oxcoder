using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IItemDao
    {
        /// <summary>
        /// 根据id获取题目实体
        /// </summary>
        /// <param name="id">题目ID</param>
        /// <returns>题目实体</returns>
        item GetItem(int id);
    }
}
