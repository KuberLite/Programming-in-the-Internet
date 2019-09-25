using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8
{
    public partial class CachWithTwoParams : System.Web.UI.Page
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