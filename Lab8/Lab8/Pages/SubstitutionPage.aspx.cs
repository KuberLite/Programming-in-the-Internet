using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8
{
    public partial class SubstitutionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text += "<br />" + DateTime.Now.ToLongTimeString();
        }

        private static string GetDate(HttpContext httpContext   )
        {
            return "<br />" + DateTime.Now.ToLongTimeString();
        }
    }
}