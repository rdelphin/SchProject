<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Login</h3>
        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox> <br />
        <asp:TextBox ID="txtPassWord" runat="server"></asp:TextBox><br />
        <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" /> <br /> <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
        <asp:Label ID="lblAlert" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
