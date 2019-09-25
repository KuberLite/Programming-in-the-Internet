<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CachWithOneParams.aspx.cs" Inherits="Lab8.CachWithParams" %>

<%@ OutputCache Duration="7" VaryByParam="Parm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Click here" />
        </div>
    </form>
</body>
</html>
