using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;


namespace Common
{
    public class SendMail
    {
        public  string send(string from, string fromName, string to, string subject, string body, string userName, string passWord, string server, string appendix)
        {

            try
            {

                //邮件发送类 

                MailMessage mail = new MailMessage();

                //是谁发送的邮件 

                mail.From = new MailAddress(from, fromName);

                //发送给谁 

                mail.To.Add(to);

                //标题 

                mail.Subject = subject;

                //内容编码 

                mail.BodyEncoding = Encoding.Default;

                //发送优先级 

                mail.Priority = MailPriority.High;

                //邮件内容 

                mail.Body = body;

                //是否HTML形式发送 

                mail.IsBodyHtml = true;

                //附件 

                if (!string.IsNullOrEmpty(appendix) && appendix.Length > 0)
                {

                    mail.Attachments.Add(new Attachment(appendix));

                }

                //邮件服务器和端口 

                SmtpClient smtp = new SmtpClient(server, 25);
                smtp.EnableSsl = true;

                smtp.UseDefaultCredentials = true;

                //指定发送方式 

                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

                //指定登录名和密码 

                smtp.Credentials = new System.Net.NetworkCredential(userName, passWord);

                //超时时间 

                smtp.Timeout = 10000;

                smtp.Send(mail);

                return "send ok";

            }

            catch (Exception exp)
            {

                return exp.Message;

            }

        }
    }
}