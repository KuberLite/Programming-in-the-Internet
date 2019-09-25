<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TreeView ID="TreeView1" runat="server" NodeWrap="True" 
        onselectednodechanged="TreeView1_SelectedNodeChanged" 
        ontreenodecheckchanged="TreeView1_TreeNodeCheckChanged" ShowLines="True">
        <Nodes>
            <asp:TreeNode Text="1" Value="1" Expanded="False" Checked="True" 
                ImageUrl="~/image/stop.png">
                   <asp:TreeNode Text="1.1" Value="1.1" NavigateUrl="~/1_1.aspx" 
                       ToolTip="Посказка 1.1"></asp:TreeNode>
                   <asp:TreeNode Text="1.2" Value="1.2"></asp:TreeNode>
                   <asp:TreeNode Text="1.3" Value="1.3"></asp:TreeNode>
            </asp:TreeNode>      
            <asp:TreeNode Text="2" Value="2" Expanded="False">
                  <asp:TreeNode Text="2.1" Value="2.1" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                  <asp:TreeNode Text="2.2" Value="2.2" ShowCheckBox="True"></asp:TreeNode>
                  <asp:TreeNode Text="2.3" Value="2.3" ShowCheckBox="True"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="3" Value="3" Checked="True" Expanded="False">
                  <asp:TreeNode Text="3.1" Value="3.1" ShowCheckBox="False"></asp:TreeNode>
                  <asp:TreeNode Text="3.2" Value="3.2"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="4" Value="4" Expanded="False"></asp:TreeNode>
            <asp:TreeNode Text="5" Value="5" Expanded="False"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
    <div>
    
    </div>
    </form>
</body>
</html>
