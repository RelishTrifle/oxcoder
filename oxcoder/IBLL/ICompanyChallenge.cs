using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface ICompanyChallenge
    {
        String[,] GetOngoChallenges();

        void NewChallenge(challenge c);

        List<item> getItems(int level, string lang);
    }
}
