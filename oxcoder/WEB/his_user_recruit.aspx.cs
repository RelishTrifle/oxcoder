using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using IBLL;
using Model;

namespace WEB
{
    public partial class his_user_recruit : System.Web.UI.Page
    {
        int recruit_id;
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
            if (Request.QueryString["rid"] != null && Request.QueryString["rid"] != "")
                recruit_id = Convert.ToInt32(Request.QueryString["rid"].ToString());
            
            result.DataSource = recruit.GetChallenge(recruit_id);

            Page.DataBind();
        }
    }
}