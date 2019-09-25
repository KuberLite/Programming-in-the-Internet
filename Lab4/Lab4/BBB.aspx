<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BBB.aspx.cs" Inherits="Lab4.About" %>

<script runat="server">
    void ServerValidationPassword(object source, ServerValidateEventArgs args)
    {
        bool flag = true;
        //for (int i = 0; i < args.Value.Length; i++)
        //{
        //    if (args.Value[i] == args.Value[i + 1])
        //    {
        //        flag = false;
        //    }
        //}
        if (args.Value.Length <= 7 || flag == false)
        {
            args.IsValid = false;
        }
    }
</script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <hr />
        <label>Фамилия: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="surname" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Имя: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="name" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Отчество: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="middleName" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Дата рождения: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="birthday" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Email: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="emailText" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Сумма: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="sum" runat="server"></asp:TextBox>
        <br />
        <br />
        <label>Пароль: </label>
        <asp:TextBox ValidationGroup="InfoGroup" ID="passwordInput" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ValidationGroup="InfoGroup" ID="ValidButton" runat="server" Text="Click here" />
        <br />
        <br />
        <asp:CustomValidator ValidationGroup="InfoGroup"
            ID="CustomValidator2"
            ControlToValidate="passwordInput"
            Display="Static"
            ErrorMessage="Error!!!"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            OnServerValidate="ServerValidationPassword"
            runat="server" />
        <asp:RegularExpressionValidator ValidationGroup="InfoGroup"
            ID="RegularExpressionValidator2"
            ControlToValidate="surname"
            ValidationExpression="[йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭяЧСМИТЬБЮ]+"
            Display="Static"
            ErrorMessage="Использовать только символы русского алфавита!"
            EnableClientScript="False"
            runat="server" />
        <br />
        <asp:RequiredFieldValidator ValidationGroup="InfoGroup"
            ID="RequiredFieldValidator3"
            ControlToValidate="surname"
            Display="Static"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            ErrorMessage="Surname is empty"
            runat="server" />
        <br />
        <asp:RegularExpressionValidator ValidationGroup="InfoGroup"
            ID="RegularExpressionValidator3"
            ControlToValidate="name"
            ValidationExpression="[йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭяЧСМИТЬБЮ]+"
            Display="Static"
            ErrorMessage="Использовать только символы русского алфавита!"
            EnableClientScript="False"
            runat="server" />
        <br />
        <asp:RequiredFieldValidator ValidationGroup="InfoGroup"

            ID="RequiredFieldValidator4"
            ControlToValidate="name"
            Display="Static"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            ErrorMessage="Name is empty!"
            runat="server" />
        <br />
        <asp:RegularExpressionValidator ValidationGroup="InfoGroup"
            ID="RegularExpressionValidator4"
            ControlToValidate="middleName"
            ValidationExpression="[йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭяЧСМИТЬБЮ]+"
            Display="Static"
            ErrorMessage="Использовать только символы русского алфавита!"
            EnableClientScript="False"
            runat="server" />
        <br />
        <asp:RequiredFieldValidator ValidationGroup="InfoGroup"
            ID="RequiredFieldValidator5"
            ControlToValidate="middleName"
            Display="Static"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            ErrorMessage="MiddleName is empty!"
            runat="server" />
        <br />
        <asp:RangeValidator ValidationGroup="InfoGroup"
            ID="RangeValidator2"
            ControlToValidate="birthday"
            MinimumValue="01.01.1900"
            MaximumValue="03.09.2019"
            Type="Date"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            EnableClientScript="false"
            Text="Max 03.09.2019!"
            runat="server" />
        <br />
        <asp:RegularExpressionValidator ValidationGroup="InfoGroup"
            ID="RegularExpressionValidator5"
            ControlToValidate="emailText"
            ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+"
            Display="Static"
            ErrorMessage="Not an e-mail!"
            EnableClientScript="False"
            runat="server" />
        <br />
        <asp:RangeValidator ValidationGroup="InfoGroup"
            ID="RangeValidator3"
            ControlToValidate="sum"
            MinimumValue="1000"
            MaximumValue="2000"
            Type="Integer"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            EnableClientScript="false"
            Text="Between 1000 to 2000!"
            runat="server" />
        <br />
        <asp:ValidationSummary ValidationGroup="InfoGroup"
            ID="valSum"
            DisplayMode="BulletList"
            runat="server"
            HeaderText="You must enter a value in the following fields:"
            Font-Names="verdana"
            Font-Size="12" />
    </div>
</asp:Content>
