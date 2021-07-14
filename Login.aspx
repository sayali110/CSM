<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSM3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/bb8d5af95d.js" type="text/javascript"></script>
</head>
<body class="login-Body">
    <form id="form1" runat="server">
        <div class="login-form">
<h1>Get Inside to drive</h1>
<asp:Label ID="Message" runat="server" Text="!! UserName or Password is Incorrect" style="font-size: 17px; color: #e67e22; font-weight: bolder; padding: 5px;" Visible="False"></asp:Label><br />
<asp:RequiredFieldValidator ID="username_validation" runat="server" ErrorMessage="!! Username is Required" Display="Dynamic" Font-Bold="True" ControlToValidate="username" ForeColor="Red" class="fieldValidation"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="userName" runat="server" class="login-txtbox" placeholder="Username" AutoComplete="off"></asp:TextBox><i class="fas fa-user fa-lg login-icon"></i><br />
<asp:RequiredFieldValidator ID="password_validation" runat="server" ErrorMessage="!! Password is Required" Display="Dynamic" Font-Bold="True" ControlToValidate="password" ForeColor="Red" class="fieldValidation"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="passWord" runat="server" class="login-txtbox" placeholder="Password" TextMode="Password"></asp:TextBox><i class="fas fa- user fa-lg login-icon"></i><br />
<asp:Button runat="server" class="login-btn" ID="SignIn" Text="login" OnClick="SignIn_Click1"></asp:Button><span class="user-register">
<a href="PasswordVerification.aspx" class="register-link">Forgot Password ??</a></span><br /><br /><br />
<span class="user-register" style="margin-left: 25px;">Don't have an Account yet ? <a href="Register.aspx" class="register-link">Sign Up</a></span>
</div>
</form>
</body>
</html>