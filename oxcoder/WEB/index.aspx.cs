using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using BLL;

namespace WEB
{
    public partial class index : System.Web.UI.Page
    {
        int id = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDataBind();
            }
        }

        private void SetDataBind()
        {
            //获取所有挑战并显示
            IChallenge challenge = new Challenge();
            rpt_challenge.DataSource = challenge.GetAllChallenges();
            Page.DataBind();
        }
    }
}