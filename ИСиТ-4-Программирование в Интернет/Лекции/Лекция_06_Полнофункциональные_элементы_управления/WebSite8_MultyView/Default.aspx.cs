using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex+1)%3;
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
}
