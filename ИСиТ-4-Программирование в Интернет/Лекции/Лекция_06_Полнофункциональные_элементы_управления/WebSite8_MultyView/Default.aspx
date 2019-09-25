<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="height: 178px; width: 602px">
        
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
            onactiveviewchanged="MultiView1_ActiveViewChanged">      
        <asp:View ID="View1" runat="server">
          <asp:Label ID="Label1" runat="server" Text="View1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 26px" 
            Width="222px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 50px" 
            Text="Button 1" />
        </asp:View>
        <asp:View ID="View2" runat="server">
            View2<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 26px" 
                Width="222px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button2" runat="server" style="margin-left: 50px" 
                Text="Button2" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:View>   
        <asp:View ID="View3" runat="server">
        <asp:Label ID="Label3" runat="server" Text="View3"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 26px" 
                Width="222px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" style="margin-left: 50px" 
                Text="Button3" /> 
            
        </asp:View>
    </asp:MultiView>
    </div>
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" 
        Width="66px" />
    </form>
</body>
</html>
