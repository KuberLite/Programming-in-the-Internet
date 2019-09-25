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
    enum StepIndex { PERSDATA = 0, SELECT = 1, SERVICE = 2, PAYTYPE = 3, CONFIRM = 4 };    
    protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
    {

        String buf = "";
        foreach (ListItem li in   this.CheckBoxList1.Items)
        {
            if (li.Selected) buf += li.Value;
        }

        if (Wizard1.ActiveStepIndex.Equals((int)StepIndex.CONFIRM))
        {
            this.Finish.Text = TextBox1.Text + " " + TextBox2.Text + " " + TextBox3.Text
                          + "<br>" + RadioButtonList1.SelectedValue
                          + "<br>" + buf
                          + "<br>" + ListBox1.SelectedValue;

        }
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
}
