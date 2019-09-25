<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_3_laba.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:Button ID="Get_Button" runat="server" OnClick="Get_Button_Click" Text="Get" />
&nbsp;
        <asp:Button ID="Post_Button" runat="server" OnClick="Post_Button_Click" Text="Post" />
&nbsp;
        <asp:Button ID="Options_Button" runat="server" OnClick="Options_Button_Click" Text="Options" />
    </h2>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
