using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using BLL;
using Model;

namespace WEB
{
    public partial class start_recruit : System.Web.UI.Page
    {
        public int recruit_id = 1;
        public int challenge_id = 3;

        IUserRecruit recruit = new UserRecruit();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDataBind();
            }
        }

        private void SetDataBind()
        {
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
                recruit_id = Convert.ToInt32(Request.QueryString["id"].ToString());
            if (Request.QueryString["cid"] != null && Request.QueryString["cid"] != "")
                challenge_id = Convert.ToInt32(Request.QueryString["cid"].ToString());

            //上面挑战信息的数据源
            specific_challenge.DataSource = recruit.GetChallenge(recruit_id);

            //挑战子题目的数据源
            rpt_item.DataSource = recruit.GetItems(challenge_id);

            Page.DataBind();
        }


    }
}