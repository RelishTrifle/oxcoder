using Common;
using BLL;
using IBLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WEB.company
{
    public partial class invite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        
        {
            string sendMail = "842136912@qq.com";//发件人邮箱
            string sendName = "萌萌萌小组";//发件人名称
            string targetMail = user_emails.Value;//收件人邮箱
            string title = email_subject_id.Value;//主题
            string content = email_content.InnerText;//内容
            string loginName = "842136912";//邮箱登录名称
            string passWord = "radial_G12";//邮箱登录密码
            string proxyServer = "smtp.qq.com";//代理服务器（发件人邮箱所在公司代理）
            string appendix = string.Empty;//附件地址
            SendMail send = new SendMail();
            string message = send.send(sendMail, sendName, targetMail, title, content, loginName, passWord, proxyServer, appendix);
            
        }
    }
}