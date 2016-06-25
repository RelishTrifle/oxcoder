using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using IBLL;

namespace WEB.company
{
    public partial class challenge_step2 : System.Web.UI.Page
    {
        private static challenge challenge;
        private List<item> allitems = new List<item>();
        private List<item> addeditems = new List<item>();
        private List<item> leftitems = new List<item>();
        ICompanyChallenge icc = new CompanyChallenge();
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                challenge = (challenge)Session["challenge"];
                if (challenge == null)
                {
                    Response.Redirect("./company/challenge_step1.aspx", false);
                    return;
                }
            }
        }

        protected void AllProblemRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "add":
                    //获取problemID
                    allitems = icc.getItems(challenge.rank,challenge.language);
                    
                    int id = int.Parse(e.CommandArgument.ToString());
                    break;
            }

        }
    }
}