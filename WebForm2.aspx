<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Prak2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            пароль
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            логин</div>
        <asp:Button ID="Button1" runat="server" Text="Отправить" OnClick="Button1_Click" />
    </form>
</body>
</html>
