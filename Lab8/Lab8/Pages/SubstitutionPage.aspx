<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubstitutionPage.aspx.cs" Inherits="Lab8.SubstitutionPage" %>
<%@ OutputCache Duration="10" VaryByParam="10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" Text="click here"/>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Substitution ID="Substitution1" runat="server" MethodName="GetDate"/>
        </div>
    </form>
</body>
</html>