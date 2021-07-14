<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordVerification.aspx.cs" Inherits="CSM3.PasswordVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/bb8d5af95d.js" type="text/javascript"></script>
</head>
<body class="password-verify-Body">
    <form id="form1" runat="server">
        <div class="login-form">
<h1>password verification</h1>
<asp:Label ID="Message" runat="server" Text="!! Email is Incorrect" Visible="false" style="font-size: 17px; color: #e67e22; font-weight: bolder; padding: 5px;"></asp:Label>
<br /><br /><br /><br />
<asp:RequiredFieldValidator ID="emailValidation" runat="server" ErrorMessage="!! Email must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="email" ForeColor="Red" class="firstName- validation"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="emailCheck" runat="server" ErrorMessage="!! Invalid Email" Font-Bold="True" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" class="firstName- validation"></asp:RegularExpressionValidator><br />
<asp:TextBox ID="email" runat="server" class="login-txtbox txt-width" placeholder="Email" AutoComplete="off"></asp:TextBox><br />
<asp:Button runat="server" class="login-btn" style="margin-top: 0;" ID="SignIn" Text="log in" onclick="SignIn_Click"></asp:Button><span class="user-register">Back to <a href="Login.aspx" class="register-link"> Log In</a></span><br /><br /><br />
</div>
</form>
</body>
</html>