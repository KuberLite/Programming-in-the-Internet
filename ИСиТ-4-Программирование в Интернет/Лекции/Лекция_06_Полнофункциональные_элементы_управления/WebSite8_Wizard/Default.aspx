<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderWidth="1px" CancelButtonText="Остановить" 
            DisplayCancelButton="True" FinishCompleteButtonText="Подтвердить" 
            FinishPreviousButtonText="Назад" Font-Names="Verdana" Font-Size="0.8em" 
            Height="229px" StartNextButtonText="Дальше" StepNextButtonText="Дальше" 
            StepPreviousButtonText="Назад" Width="712px" 
            onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep runat="server" title="Персональные данные">
                 <br />
                 <br />
                
                 <asp:Table ID="Table1" runat="server" Height="89px" style="margin-left: 69px; margin-top: 0px;" 
                     Width="272px">
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                            <asp:Label ID="Label3" runat="server" Text="Фамилия" Font-Size="Medium" 
                                 Width="100px" Font-Names="Courier New" Height="20px"></asp:Label>     
                        
                          


</asp:TableCell>
                         <asp:TableCell runat="server">
                          <asp:TextBox ID="TextBox1" runat="server" Height="20px" 
                                style="margin-left: 0px" Width="180px"></asp:TextBox>
                         
                         
                         


</asp:TableCell>
                     </asp:TableRow>
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                               <asp:Label ID="Label4" runat="server" Text="Имя" Font-Size="Medium" 
                                  Width="100px" Font-Names="Courier New" Height="20px"></asp:Label> 
                            
                         



</asp:TableCell>
                         <asp:TableCell runat="server">
                         <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                                       Width="180px" Height="20px"></asp:TextBox>        
                         



</asp:TableCell>
                     </asp:TableRow>
                     <asp:TableRow runat="server">
                         <asp:TableCell runat="server">
                         <asp:Label ID="Label1" runat="server" Text="Отчество" Font-Size="Medium" 
                                 Width="100px" Font-Names="Courier New" Height="20px"></asp:Label>   
                         
                         

</asp:TableCell>
                         <asp:TableCell runat="server">
                         <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                                       Width="180px" Height="20px"></asp:TextBox> 
                         

</asp:TableCell>
                     </asp:TableRow>
                 </asp:Table>
                 
                 [<br />
                 <br />
                
                <br />
                <br/>     
                         
                
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Выбор">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    Font-Names="Courier New" Font-Size="Medium" Width="379px">
                    <asp:ListItem>Пляж у моря</asp:ListItem>
                    <asp:ListItem>Морской круиз</asp:ListItem>
                    <asp:ListItem>Охота в тайге</asp:ListItem>
                    <asp:ListItem>Рыбалка в Норвегии</asp:ListItem>
                    <asp:ListItem>Восхождение к подножию Эвереста</asp:ListItem>
                </asp:RadioButtonList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Дополнительные услуги">
                 
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Names="Courier New" 
                    Font-Size="Medium" RepeatDirection="Horizontal" style="margin-left: 60px">
                    <asp:ListItem>Виза</asp:ListItem>
                    <asp:ListItem>Страховка</asp:ListItem>
                    <asp:ListItem>Трансфер</asp:ListItem>
                    <asp:ListItem>Гид-переводчик</asp:ListItem>
                </asp:CheckBoxList>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Оплата">
                <asp:ListBox ID="ListBox1" runat="server" Height="92px" Width="223px">
                    <asp:ListItem>Наличные</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Maestro</asp:ListItem>
                    <asp:ListItem>American express</asp:ListItem>
                    <asp:ListItem>Денежный перевод</asp:ListItem>
                </asp:ListBox>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Подтверждение">
                <asp:Label ID="Finish" runat="server" Font-Names="Courier New" 
                    Font-Size="Medium"></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
            ForeColor="White" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
    </asp:Wizard>
    
    
    </div>
    </form>
</body>
</html>
