using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public  class CompanyChallengeDao : ICompanyChallengeDao
    {
        //public List<String> GetOngoChallengesItem(challenge c)
        //{
        //    String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
        //    ItemDataContext cdc = new ItemDataContext(connection);
        //    String itemStr = c.items;
        //    String[] itemArry = itemStr.Split('#');
        //    List<String> items=new List<string>();
        //    foreach (var idd in itemArry)
        //    {
        //        var iii = from i in cdc.item where i.id == int.Parse(idd)  select i.name;
        //        items.Add(iii.ToString());
        //    };
        //    return items;
            
        //}


        public String[,] GetOngoChallenges()
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            ChallengeDataContext cdc = new ChallengeDataContext(connection);
            ItemDataContext idc = new ItemDataContext(connection);
            DateTime begintime = DateTime.Now;
            
            var challenges = from cl in cdc.challenge where cl.end_date > begintime && cl.companyId == 8 select cl; 
            String[,] result = new String[3,5];
            int i=0; 
            foreach (challenge c in challenges)
            {
                result[i,0] = (String)c.name;
                result[i,1] =  c.begin_date.ToString();
                String[] itemArry = c.items.Split('#');
                for (int j=0; j<itemArry.Length; j++){
                    var item = idc.item.Single<item>(ii => ii.id == int.Parse( itemArry[j] ) );
                    result[i,2+j] = item.name;
                }
                i++;
            }
            return result;

        }

        public void SaveChallenge(challenge c)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            ChallengeDataContext cdc = new ChallengeDataContext(connection);
            cdc.challenge.InsertOnSubmit(c);
            cdc.SubmitChanges();

        }

        public List<item> getItems(int level, string lang)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            ItemDataContext cdc = new ItemDataContext(connection);
            List<item> items = new List<item>();
            var query = from c in cdc.item where c.level == level & c.language == lang select c;

            return items;
        }
}}
