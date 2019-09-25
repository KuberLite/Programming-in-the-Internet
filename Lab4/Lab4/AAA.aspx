<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AAA.aspx.cs" Inherits="Lab4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script runat="server">
        void ServerValidation(object source, ServerValidateEventArgs args)
        {
            bool simple = true;
            int value = int.Parse(args.Value);
            for (int i = 2; i <= value / 2; i++)
            {
                if (value % i == 0)
                {
                    simple = false;
                    break;
                }
            }
            if (!simple)
            {
                args.IsValid = false;
            }
        }
    </script>
    <script>
        function checkSimple() {
            var simple = true;
            var value = $('#TextBox7').val();
            console.log(value);
            for (var i = 2; i <= (value / 2); i++) {
                if (value % i == 0) {
                    simple = false;
                    break;
                }
            }
            if (!simple) {
                document.getElementById("label1").innerHTML = "Not a simple!(client)";
            }
        }
    </script>
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Text="Red" Value="1"></asp:ListItem>
            <asp:ListItem Text="Black" Value="2"></asp:ListItem>
            <asp:ListItem Text="Blue" Value="3"></asp:ListItem>
            <asp:ListItem Text="Green" Value="4"></asp:ListItem>
            <asp:ListItem Text="Yellow" Value="5"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="ValidateBtn" runat="server" Text="Click Here"/>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            ControlToValidate="TextBox1"
            Display="Static"
            ErrorMessage="TextBox is empty!"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            runat="server" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            ControlToValidate="DropDownList1"
            Display="Static"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            ErrorMessage="DropDownList is empty!"
            runat="server" />
    </div>
    <div>
        <hr />
        <asp:TextBox ValidationGroup="qwerty" ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ValidationGroup="qwerty" ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ValidationGroup="qwerty" ID="ValidateBtn1" runat="server" Text="Click here" />
        <br />
        <br />
        <asp:RangeValidator ValidationGroup="qwerty" ID="Range1"
            ControlToValidate="TextBox2"
            MinimumValue="100"
            MaximumValue="200"
            Type="Integer"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            EnableClientScript="false"
            Text="The value must be from 100 to 200!"
            runat="server" />
        <br />
        <br />
        <asp:RangeValidator ValidationGroup="qwerty" ID="RangeValidator1"
            ControlToValidate="TextBox3"
            MinimumValue="01.01.2011"
            MaximumValue="31.12.2011"
            Type="Date"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            EnableClientScript="false"
            Text="The value must be from 01.01.2011 to 31.12.2011!"
            runat="server" />
    </div>
    <div>
        <hr />
        <asp:TextBox ID="TextBox4" ValidationGroup="CheckDate" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox5" ValidationGroup="CheckDate" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ValidateBtn2" ValidationGroup="CheckDate" runat="server" Text="Click here" />
        <br />
        <br />
        <asp:CompareValidator ValidationGroup="CheckDate" ID="Compare1"
            ControlToValidate="TextBox4"
            ControlToCompare="TextBox5"
            EnableClientScript="False"
            Operator="LessThan"
            Text="Error"
            Type="Date"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            runat="server" />
    </div>
    <div>
        <hr />
        <asp:TextBox ValidationGroup="qwerty1" ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ValidationGroup="qwerty1" ID="ValidateBtn5" Text="Click here" runat="server" />
        <br />
        <br />
        <asp:RegularExpressionValidator ValidationGroup="qwerty1" ID="RegularExpressionValidator1"
            ControlToValidate="TextBox8"
            ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+"
            Display="Static"
            ErrorMessage="Not an e-mail!"
            EnableClientScript="False"
            runat="server" />
    </div>
    <div>
        <hr />
        <asp:TextBox ValidationGroup="edite" ID="TextBox6" runat="server"></asp:TextBox>
        <input type="text" id="TextBox7" />
        <br />
        <br />
        <input type="button" id="ValidateBtn3" onclick="checkSimple()" value="Click here(client)" />
        <asp:Button ValidationGroup="edite" ID="ValidateBtn4" runat="server" Text="Click here(server)" />
        <br />
        <br />
        <asp:CustomValidator ValidationGroup="edite" ID="CustomValidator1"
            ControlToValidate="TextBox6"
            Display="Static"
            ErrorMessage="Not a simple!(server)"
            ForeColor="green"
            Font-Names="verdana"
            Font-Size="10pt"
            OnServerValidate="ServerValidation"
            runat="server" />
        <p id="label1"></p>
    </div>
</asp:Content>