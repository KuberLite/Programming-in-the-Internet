<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheWithoutParams.aspx.cs" Inherits="Lab8.Form1" %>

<%@ OutputCache Duration="7" VaryByParam="None" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="LABEL"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Click here" />
        </div>
    </form>
</body>
</html>
