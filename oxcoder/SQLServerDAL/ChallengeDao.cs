﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace SQLServerDAL
{
    public class ChallengeDao : IChallengeDao
    {
        public string GetItemsIds(int challenge_id)
        {
            String connection = "Data Source=115.159.202.201;Initial Catalog=tcoder;Persist Security Info=True;User ID=tang;Password=.net123456";
            ChallengeDataContext cdc = new ChallengeDataContext(connection);

            challenge record = cdc.challenge.Single<challenge>(c => c.id == challenge_id);
            return record.items;
        }
    }
}