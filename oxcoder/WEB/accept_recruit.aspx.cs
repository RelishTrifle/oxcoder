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
    public partial class accept_recruit : System.Web.UI.Page
    {
        int challenge_id = -1;
        int user_id = 1;
        IUserRecruit recruit = new UserRecruit();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["cid"] != null && Request.QueryString["cid"] != "")
                    challenge_id = Convert.ToInt32(Request.QueryString["cid"].ToString());

                //获取session里的用户ID
                recruit.AcceptChallenge(user_id, challenge_id);
                Server.Transfer("user_recruit.aspx");
            }

        }
    }
}