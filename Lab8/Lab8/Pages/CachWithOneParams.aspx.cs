using System;
using System.Web.UI;

namespace Lab8
{
    public partial class CachWithParams : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string x = "";
            foreach (string s in Request.QueryString)
            {
                x += " " + s + " " + Request[s];
            }
            Label1.Text += x + ": " + DateTime.Now.ToString() + "<br />";
        }
    }
}