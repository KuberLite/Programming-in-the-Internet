<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Button1" Text="7 seconds cache" runat="server"/>
    <asp:Button ID="Button2" Text="With Parm1" runat="server"/>
    <asp:Button ID="Button3" Text="With Parm1&Parm2" runat="server"/>
    <asp:Button ID="Button4" Text="VaryByCustom" runat="server"/>
    <asp:Button ID="Button5" Text="Substitution" runat="server"/>
</asp:Content>
