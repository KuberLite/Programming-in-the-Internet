<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 394px; height: 59px">
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" onmenuitemclick="Menu1_MenuItemClick" 
            Orientation="Horizontal" StaticSubMenuIndent="10px">
            <StaticMenuStyle HorizontalPadding="50px" />
            <StaticSelectedStyle BackColor="Yellow" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="A" ToolTip="подсказка A" Value="A">
                    <asp:MenuItem Text="AA1" ToolTip="Посказка AA1" Value="AA1"></asp:MenuItem>
                    <asp:MenuItem Text="AA2" Value="AA2">
                        <asp:MenuItem Text="AAA1" Value="Value_AAA1"></asp:MenuItem>
                        <asp:MenuItem Text="AAA2" Value="AAA2"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="AA3" Value="AA3"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="B" Value="B">
                    <asp:MenuItem Text="BB1" Value="BB1"></asp:MenuItem>
                    <asp:MenuItem Text="BB2" Value="BB2"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
