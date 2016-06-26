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
    public class ItemDao : IItemDao
    {
        private String connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        public item GetItem(int id)
        {
            ItemDataContext idc = new ItemDataContext(connection);

            return idc.item.Single<item>(i => i.id == id);
        }
    }
}
