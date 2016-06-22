using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public class ItemDao : IItemDao
    {
        public item GetItem(int id)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            ItemDataContext idc = new ItemDataContext(connection);

            return idc.item.Single<item>(i => i.id == id);
        }
    }
}
