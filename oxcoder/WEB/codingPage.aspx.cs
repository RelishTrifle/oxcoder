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
    public partial class codingPage : System.Web.UI.Page
    {
        public int order = 0;
        public int challenge_id = -1;
        public int user_id = 1;
        public int recruit_id;
        IList<item> current_item = new List<item>();
        IList<item> items;

        IUserRecruit recruit = new UserRecruit();

        protected void Page_Load(object sender, EventArgs e)
        { 
            SetDataBind();
        }

        protected void ButtonRun_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //题目还没做完
            /*if (order <= items.Count)
            {
                current_item.Clear();
                current_item.Add(items[order]);
                info.DataSource = current_item;

                Page.DataBind();
            }*/


            //题目全部做完了,保存对象
            int result = 98;
            recruit.BeginRecruit(recruit_id,result);
            
            //跳转到his_user_recruit.aspx页面
            string s_url = "his_user_recruit.aspx?rid=" + recruit_id;
            Response.Redirect(s_url);
            
        }

        private void SetDataBind()
        {
            if (Request.QueryString["cid"] != null && Request.QueryString["cid"] != "")
                challenge_id = Convert.ToInt32(Request.QueryString["cid"].ToString());
            if (Request.QueryString["rid"] != null && Request.QueryString["rid"] != "")
                recruit_id = Convert.ToInt32(Request.QueryString["rid"].ToString());
            //order = Convert.ToInt32(Session["order"])+1;
            items = recruit.GetItems(3);
            current_item.Add(items[order]);
            info.DataSource = current_item;

            Page.DataBind();
        }
    }
}