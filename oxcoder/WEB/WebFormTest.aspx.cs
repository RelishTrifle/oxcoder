using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using IBLL;

namespace WEB
{
    public partial class WebFormTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userId"] = 3;
            Session["userName"] = "zhao";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            IUserRecruit ur = new UserRecruit();

            ur.AcceptChallenge(4, 10);
            
        }
    }
}