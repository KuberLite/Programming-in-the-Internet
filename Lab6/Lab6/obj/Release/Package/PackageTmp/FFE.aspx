<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FFE.aspx.cs" Inherits="Lab6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label2" Text="View2" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="margin-left: 50px" Text="Button2" />
            </asp:View>

            <asp:View ID="View1" runat="server">
                <asp:Label ID="Label1" Text="View1" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="margin-left: 50px" Text="Button1" />
            </asp:View>

            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label3" Text="View3" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Style="margin-left: 26px" Width="222px"></asp:TextBox>
                <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" Style="margin-left: 50px" Text="Button3" />
            </asp:View>
        </asp:MultiView>
    </div>
    <asp:Button ID="Button4" runat="server" Text="Click here" OnClick="Button4_Click" />
    <hr />
    <div>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" />
        <asp:Button runat="server" Text="Click Here" />
    </div>
    <hr />
    <div>
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnActiveStepChanged="Wizard1_ActiveStepChanged" Width="585px" Height="149px" ActiveStepIndex="0">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="Step1" runat="server" Title="Персональные данные">
                    <table style="width: 100%; height: 100%; background-image: url('../Images/71c8b30142a321f2696bbf49a635d1c2.jpg')">
                        <tr>
                            <td>
                                <asp:Label ID="LabelSurname" runat="server" Text="Фамилия"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxSurname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelName" runat="server" Text="Имя"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelMiddleName" runat="server" Text="Отчество"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxMiddleName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Step2" runat="server" Title="Выбор">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="SelectTypeOfVocation" runat="server">
                                    <asp:ListItem Text="Пляж у моря"></asp:ListItem>
                                    <asp:ListItem Text="Морской круиз"></asp:ListItem>
                                    <asp:ListItem Text="Охота в тайге"></asp:ListItem>
                                    <asp:ListItem Text="Рыбалка в Норвегии"></asp:ListItem>
                                    <asp:ListItem Text="Восхождение к подножию Эвереста"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Step3" runat="server" Title="Дата">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:Calendar ID="Calendar1" 
                                              SelectedMode="DayWeek" 
                                              OnSelectionChanged="Calendar1_SelectionChanged" 
                                              runat="server" 
                                              Width="304px" 
                                              BackColor="White" 
                                              BorderColor="Black" 
                                              BorderStyle="Solid" 
                                              Caption="Мой календарь" 
                                              CellSpacing="1" 
                                              Font-Names="Verdana" 
                                              Font-Size="9pt" 
                                              ForeColor="Black" 
                                              Height="250px" 
                                              NextPrevFormat="FullMonth" SelectionMode="DayWeek">
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                    <OtherMonthDayStyle BackColor="#999999" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="true" Font-Size="8pt" ForeColor="White" />
                                    <DayHeaderStyle Font-Bold="true" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                </asp:Calendar>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Step4" runat="server" Title="Оплата">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:DropDownList runat="server" ID="PaymentMethods">
                                    <asp:ListItem Text="Наличные"></asp:ListItem>
                                    <asp:ListItem Text="Visa"></asp:ListItem>
                                    <asp:ListItem Text="Maestro"></asp:ListItem>
                                    <asp:ListItem Text="AmericanExpress"></asp:ListItem>
                                    <asp:ListItem Text="Денежный перевод"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Step5" runat="server" Title="Подтверждение">
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:Label ID="TotalInfo" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    <hr />
    <div>
        <asp:TreeView runat="server" ImageSet="XPFileExplorer" NodeIndent="15" ShowLines="True">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode ShowCheckBox="True" Text="First" Value="First"></asp:TreeNode>
                <asp:TreeNode Text="Second" ToolTip="TipShow" Value="Second"></asp:TreeNode>
                <asp:TreeNode ImageUrl="~/Images/iconfortree.bmp" Text="Third" Value="Third"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />

        </asp:TreeView>
    </div>
    <hr />
    <div>
        <asp:Menu runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem Text="First" Value="First">
                    <asp:MenuItem Text="FirstFirst" Value="FirstFirst"></asp:MenuItem>
                    <asp:MenuItem Text="FirstSecond" Value="FirstSecond"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Second" Value="Second"></asp:MenuItem>
                <asp:MenuItem Text="Third" ToolTip="ToolTip" Value="Third"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />

        </asp:Menu>
    </div>
</asp:Content>
