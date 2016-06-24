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
    public partial class challenge_auth_check : System.Web.UI.Page
    {
        public int order = 0;
        public int countDown = -1;
        public string result = null;
        public int challenge_id = -1;
        public int user_id = -1;
        item current_item = null;

        IUserRecruit recruit = new UserRecruit();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SetDataBind();
            }
        }

        private void SetDataBind()
        {
            if (Request.QueryString["cid"] != null && Request.QueryString["cid"] != "")
                challenge_id = Convert.ToInt32(Request.QueryString["cid"].ToString());
            if (Request.QueryString["order"] != null && Request.QueryString["order"] != "")
                order = Convert.ToInt32(Request.QueryString["order"].ToString());

            //IList<item> items = recruit.GetItems(challenge_id);
            IList<item> items = recruit.GetItems(3);
            switch (order)
            {
                case 0:
                    current_item = items[0];
                    break;
                case 1:
                    current_item = items[1];
                    break;
                case 2:
                    current_item = items[2];
                    break;
                default:
                    current_item = items[0];
                    break;
            }
           

            //Page.DataBind();
        }
    }
}