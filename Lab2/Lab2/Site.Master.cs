using System;
using System.Web;
using System.Web.UI;

namespace Lab2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            this.StateLabel.Text += "-Init-\n";
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            this.StateLabel.Text += "-Prerender-\n";
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            this.StateLabel.Text += "-Unload-\n";
        }
        protected void Page_Disposed(object sender, EventArgs e)
        {
            this.StateLabel.Text += "-Disposed-\n";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.StateLabel.Text += "-Load-\n";
        }

        protected void ButtonViewState_Click(object sender, EventArgs e)
        {
            this.LengthViewStateLabel.Text = "*" + this.LengthViewStateLabel.Text + "*";
            String s = Request["__VIEWSTATE"];
            this.LengthViewStateLabel.Text = "Length of viewstate: [" + s.Length + "]" + "[" + this.LengthViewStateLabel.Text.Length + "]";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            this.LengthViewStateLabel.Text += "-Check-";
        }

        protected void ButtonCheckParams_Click(object sender, EventArgs e)
        {
            this.Response.Write("<br> Символическое имя машины: " + System.Environment.MachineName);
            this.Response.Write("<br> Версия ОС: " + System.Environment.OSVersion);
            this.Response.Write("<br> Объем памяти: " + System.Environment.WorkingSet);
            this.Response.Write("<br> Версия ASP.NET: " + System.Environment.Version.ToString());
            this.Response.Write("<br> IP-адрес: " + HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]);
            this.Response.Write("<br> Временный каталог: " + Environment.GetEnvironmentVariable("TEMP"));
            this.Response.Write("<br> Запрос: " + (Request.IsLocal ? " локальной ":" не локальной"));
            this.Response.Write("<br> Запрос: " + (Request.IsSecureConnection ? " защищенный" : "не защищенный"));
            this.Response.Write("<br> Браузер: " + Request.Browser.Version);
            this.Response.Write("<br> Браузер: " + Request.Browser.MinorVersion);
            this.Response.Write("<br> Браузер: " + Request.Browser.MajorVersion);    
        }
    }
}