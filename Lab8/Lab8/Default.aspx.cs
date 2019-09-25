using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab8
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.Attributes.Add("OnClick", "window.open('Pages/CacheWithoutParams.aspx');");
                Button2.Attributes.Add("OnClick", "window.open('Pages/CachWithOneParams.aspx/?Parm1=1');");
                Button3.Attributes.Add("OnClick", "window.open('Pages/CachWithTwoParams.aspx/?Parm1=1&Parm2=2');");
                Button4.Attributes.Add("OnClick", "window.open('Pages/VaryCustom.aspx/?smwcache=1');");
                Button5.Attributes.Add("OnClick", "window.open('Pages/SubstitutionPage.aspx');");
            }
        }
    }
}