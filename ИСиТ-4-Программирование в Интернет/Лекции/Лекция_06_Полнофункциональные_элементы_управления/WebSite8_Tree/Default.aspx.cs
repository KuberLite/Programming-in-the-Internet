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
    

    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        TreeNode tn = this.TreeView1.SelectedNode;

        String txt = tn.Value;
        if ( tn.ShowCheckBox !=null && (bool)tn.ShowCheckBox) txt += (tn.Checked ? " установлен " : " сброшен ");
        this.Response.Write(txt);
        bool? h;
         
    }
           
    protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
    {

        TreeNode tn = this.TreeView1.SelectedNode;
        this.Response.Write(tn.Value + (tn.Checked ? " установлен " : " сброшен "));
    }


    //protected void TreeView1_TreeNodeCollapsed(object sender, TreeNodeEventArgs e)
    //{
    //    this.Response.Write("<br /> свернуть ");
    //}
    //protected void TreeView1_TreeNodeExpanded(object sender, TreeNodeEventArgs e)
    //{
    //   this.Response.Write(" <br /> раскрыть ");

    //}
}
