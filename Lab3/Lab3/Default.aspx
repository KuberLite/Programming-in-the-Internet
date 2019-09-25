<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="GetButton" runat="server" OnClick="GetButton_Click" Text="Get" Width="67px" />
    <asp:Button ID="PostButton" runat="server" OnClick="PostButton_Click" Text="Post" Width="67px" />
    <asp:Button ID="OptionsButton" runat="server" OnClick="OptionsButton_Click" Text="Options" Width="67px" />
    <asp:Button ID="GetErrorButton" runat="server" OnClick="GetErrorButton_Click" Text="Get(Error)" Width="67px" />
</asp:Content>
