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
    public partial class user_recruit : System.Web.UI.Page
    {
        int delete = -1;
        int isHistory = -1;
        int userState = -1;//0未完成，1通过，2不通过

        IUserRecruit recruit = new BLL.UserRecruit();

        public string UserId
        {
            get
            {
                if (Session["id"] != null)
                {
                    return Session["id"].ToString();
                }
                else
                {
                    Session["id"] = "";
                }
                return "ID";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetDataBind();
            }
        }

        private void SetDataBind()
        {
            if (Request.QueryString["userState"] != null && Request.QueryString["userState"] != "")
            {
                userState = Convert.ToInt32(Request.QueryString["userState"].ToString());
            }
            if (Request.QueryString["isHistory"] != null && Request.QueryString["isHistory"] != "")
            {
                isHistory = Convert.ToInt32(Request.QueryString["isHistory"].ToString());
            }
            if (Request.QueryString["delete"] != null && Request.QueryString["delete"] != "")
            {
                //删除指定id的user_challenge表中的记录
                recruit.AbandonRecruit(Convert.ToInt32(Request.QueryString["delete"].ToString()));
            }

            //页面数据显示操作,获取数据
            rpt_Challenge.DataSource = recruit.GetHisChallenges(1, isHistory, userState);

            Page.DataBind();

        }
    }
}