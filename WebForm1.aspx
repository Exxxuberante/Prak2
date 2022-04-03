<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prak2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <configuration>
                <appSettings>
                    <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
                </appSettings>
            </configuration>
            Имя<asp:TextBox ID="TextBoxLogin" runat="server" OnTextChanged="TextBoxLogin_TextChanged" style="margin-left: 110px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TextBoxLogin" Display="Static" ErrorMessage="Имя не должно быть пустым!" runat="server"></asp:RequiredFieldValidator>
            <br />
            Пароль<asp:TextBox ID="TextBoxPassword" MaxLength ="100" MinLength="8" runat="server" style="margin-left: 89px" OnTextChanged="TextBoxPassword_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valPassword" runat="server"  ControlToValidate="TextBoxPassword" ErrorMessage="Минимальная длина пароля 8 символов!" ValidationExpression=".{8}.*" />

            <br />
            Подтверждение<asp:TextBox ID="TextBoxPasswordVer" runat="server" style="margin-left: 23px; margin-bottom: 0px;" OnTextChanged="TextBoxPasswordVer_TextChanged"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="TextBoxPassword" Display="Static" ErrorMessage="Пароли должны совпадать!" ControlToCompare="TextBoxPasswordVer" Type="String" Operator="Equal" runat="server"></asp:CompareValidator>
            <br />
            Email<asp:TextBox ID="TextBoxEmail" runat="server" style="margin-left: 105px" OnTextChanged="TextBoxEmail_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="TextBoxEmail" Display="Static" ErrorMessage="Неправильный email!" ValidationExpression="(\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)" runat="server"></asp:RegularExpressionValidator>
            <br />
            Возраст
            <asp:TextBox ID="TextBoxAge" runat="server" style="margin-left: 82px" OnTextChanged="TextBoxAge_TextChanged"></asp:TextBox>
            <asp:RangeValidator ControlToValidate="TextBoxAge" Type="Integer" MinimumValue="18" MaximumValue="65" ErrorMessage
                ="Возраст от 18 до 65" Display="Static" runat="server"></asp:RangeValidator>
            <br />
        </div>
    </form>
</body>
</html>
