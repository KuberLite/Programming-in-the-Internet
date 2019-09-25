<%@ Page Title="Home Page" Language="C#" Theme="CommonDesign" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <input type="button" class="button-class" value="Click here" />
        <label class="text-class">Simple text</label>
    </div>
    <hr />
    <div>
        <asp:Button runat="server" CssClass="button-class" Text="Click here" />
        <asp:Label runat="server" CssClass="text-class" Text="Simple text"></asp:Label>
    </div>
    <hr />
    <div>   
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br />
        <asp:TextBox ID="text1" runat="server" SkinID="txt"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" SkinID="btn" Text="Button"/><br />
        <asp:Label ID="Label2" runat="server" SkinID="lbltxt1" Text="Label"></asp:Label> <br />
    </div>
</asp:Content>
