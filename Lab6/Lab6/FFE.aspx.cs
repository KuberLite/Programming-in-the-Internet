using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = TextBox3.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = TextBox2.Text;
        }

        private enum StepIndex
        {
            PERSDATA = 0,
            SELECT = 1,
            SERVICE = 2,
            PAYTYPE = 3,
            CONFIRM = 4
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            String buffer = "";
            if (Wizard1.ActiveStepIndex.Equals((int)StepIndex.CONFIRM))
            {
                TotalInfo.Text = TextBoxSurname.Text + " " + TextBoxName.Text + " " + TextBoxMiddleName.Text
                                      + "<br />" + SelectTypeOfVocation.SelectedValue
                                      + "<br />" + buffer
                                      + "<br />" + PaymentMethods.SelectedValue
                                      + "<br />" + ((Calendar1.SelectedDate < DateTime.Now) ? "Error date" : Calendar1.SelectedDate.ToString());
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        static int count = 1;

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (count == 1)
            {
                AdRotator1.KeywordFilter = "";
                count++;
            }else if(count == 2)
            {
                AdRotator1.KeywordFilter = "b1";
                count++;
            }
            else
            {
                AdRotator1.KeywordFilter = "b2";
                count++;
            }
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;
            string txt = tn.Value;
            Response.Write("<br />" + txt);
        }

        protected void Unnamed2_MenuItemClick(object sender, MenuEventArgs e)
        {
            MenuItem menuItem = menuKek.SelectedItem;
            string txt = menuItem.Value;
            Response.Write("<br />" + txt);
        }
    }
}