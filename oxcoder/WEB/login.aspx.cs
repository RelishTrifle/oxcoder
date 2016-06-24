using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using BLL;
using Model;
using BLLFactory;

namespace WEB
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            IUserManagment userManagment = BusinessAccess.CreateUserManagment();
            int userId = userManagment.Login(Login1.UserName,Login1.Password);
            if (userId == -1)
            {
                e.Authenticated = false;//不通过验证  
            }
            else
            {
                Session["userName"] = Login1.UserName;
                Session["id"] = userId;
                e.Authenticated = true;//通过验证 
            }
        }
    }
}