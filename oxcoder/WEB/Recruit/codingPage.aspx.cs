using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using BLL;
using Model;

namespace WEB.Recruit
{
    public partial class codingPage : System.Web.UI.Page
    {
        public int order = 0;
        public int challenge_id = -1;
        public int user_id = -1;
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
            if (order <= items.Count)
            {
                current_item.Clear();
                current_item.Add(items[order]);
                info.DataSource = current_item;
                order += 1;

                Page.DataBind();
            }

            //题目全部做完了
            string result = "98";
            //跳转到his_user_recruit.aspx页面

        }

        private void SetDataBind()
        {
            if (Request.QueryString["cid"] != null && Request.QueryString["cid"] != "")
                challenge_id = Convert.ToInt32(Request.QueryString["cid"].ToString());
            items = recruit.GetItems(3);
            current_item.Add(items[order]);
            info.DataSource = current_item;
            order += 1;

            Page.DataBind();
        }
    }
}