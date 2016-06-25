using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using BLL;

namespace WEB.company
{
    public partial class company_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetDataBind();
        }
        private void SetDataBind()
        {
            //获取所有挑战并显示
            ICompanyChallenge cs = new CompanyChallenge();
            String[,] result = cs.GetOngoChallenges();
            String s = "";
            for (int i = 0; i < result.Length; i++)
            {
                if (result[i, 0] == null) break;
                s += "<div class='col-md-12'><div class='panel panel-default project '><div class='panel-body'>" +
                    "<div class='row'><!-- new start--><div class='col-md-5'><h2 style='margin: 12px 0 2px 0;'>	<a href='#'>" + result[i, 0] + "</a> <!--去筛选-->" +
                    "</h2><div style='width: 280px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;'>" +
                    "<small class='text-muted'>" + (String)result[i, 1] + (String)result[i, 2] + "&nbsp;" + (String)result[i, 3] + "&nbsp;" + result[i, 4] + "&nbsp;" +
                    "</small></div></div></div></div></div></div>";
           
            }

            OngoingList.InnerHtml = s;
            Page.DataBind();
        }
    }
}