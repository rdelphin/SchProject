<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SchoolProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
	<link rel="stylesheet" href="login.css" />
</head>
<body>
    <form id="form1" class="form-signin" runat="server">
		<div class="text-center mb-4">
			<h1 class="h3 mb-3 font-weight-normal">School Name</h1>
			<p>Please sign in below to access the dashboard.</p>
		</div>
		<div class="form-label-group">
			<asp:TextBox ID="txtUserName" cssClass="form-control" placeholder="Username" autofocus="autofocus" runat="server" ></asp:TextBox>
			<label for="txtUserName">Username</label>
		</div>
		<div class="form-label-group">
			<asp:TextBox ID="txtPassWord" cssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
			<label for="txtPassWord">Password</label>
		</div>
		<div class="checkbox mb-3">
			<label>
				<asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
			</label>
		</div>
		<asp:Button ID="btnLogin" cssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
		<asp:Label ID="lblAlert" runat="server"></asp:Label>
		<p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
    </form>
</body>
</html>
