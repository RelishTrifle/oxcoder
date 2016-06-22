using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IChallengeDao
    {
        string GetItemsIds(int challenge_id);
    }
}
