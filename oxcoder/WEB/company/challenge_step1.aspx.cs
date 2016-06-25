using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WEB.company
{
    public partial class challenge_step1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void new_challenge_btn_1_Click1(object sender, EventArgs e)
        {
            challenge c = new challenge();
            if (level_id.Value == "&#39;1&#39;")
            {
                c.salary_range = "2k~5k";
                c.rank = 1;
            }
            else if (level_id.Value == "&#39;2&#39;")
            {
                c.salary_range = "5k~8k";
                c.rank = 2;
            }
            else if (level_id.Value == "&#39;3&#39;")
            {
                c.salary_range = "8k~10k";
                c.rank = 3;
            }
            else if (level_id.Value == "&#39;4&#39;")
            {
                c.salary_range = "10k~12k";
                c.rank = 4;
            }
            else if (level_id.Value == "&#39;5&#39;")
            {
                c.salary_range = "12k~15k";
                c.rank = 5;
            }
            else
            {
                c.salary_range = "15k以上";
                c.rank = 6;
            }

            if (directions_id.Value == "&#39;1&#39;")
            {
                c.language = "java";
            }
            else if (directions_id.Value == "&#39;2&#39;")
            {
                c.language = "android";
            }
            else if (directions_id.Value == "&#39;3&#39;")
            {
                c.language = "ios";
            }
            else if (directions_id.Value == "&#39;4&#39;")
            {
                c.language = "C(beta)";
            }
            else if (directions_id.Value == "&#39;5&#39;")
            {
                c.language = "C++(beta)";
            }
            else if (directions_id.Value == "&#39;6&#39;")
            {
                c.language = "php(beta)";
            }
            else
            {
                c.language = "python(beta)";
            }
            c.publiced = Convert.ToInt16(public_id.Value);
            c.companyId = 8;
            c.sponsor = "北京交通大学软件学院萌萌萌";
            c.begin_date = DateTime.Now;
            c.end_date = DateTime.Now.AddMonths(2);
            c.num = 0;
            c.del = 1;
            
            Session["challenge"] = c;
            Response.Redirect("/company/challenge_step2.aspx");
        }
    }
}