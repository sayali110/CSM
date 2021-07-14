<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="CSM3.NewPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="https://kit.fontawesome.com/bb8d5af95d.js"></script>
</head>
<body class="new-password-body">
    <form id="form1" runat="server">
       <div class="login-form">
<h1>insert New Password</h1>
<asp:Label ID="Message" runat="server" Text="!! UserName or Password is Incorrect" style="font-size: 17px; color: #e67e22; font-weight: bolder; padding: 5px;" Visible="False"></asp:Label>
<br />
<asp:RequiredFieldValidator ID="passwordValidation" runat="server" ErrorMessage="!! Password must be Required" Font-Bold="True" Display="Static" ControlToValidate="password" ForeColor="Red" class="firstName- validation"></asp:RequiredFieldValidator><br />
<asp:CompareValidator ID="MatchingPasswords" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="!! Both passwords should match" ForeColor="Red" Font-Bold="true" Display="Dynamic" class="lastName-validation"></asp:CompareValidator><br />
<asp:TextBox ID="password" runat="server" class="login-txtbox" placeholder="New Password" TextMode="Password"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="cpasswordValidation" runat="server" ErrorMessage="!! Confirm Password must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="cpassword" ForeColor="Red" class="firstName-validation"></asp:RequiredFieldValidator><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="!! Confirm Password must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="cpassword" ForeColor="Red" class="firstName-validation"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="cpassword" runat="server" class="login-txtbox" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br />
<asp:Button runat="server" class="login-btn" ID="SignIn" Text="Changeit" onclick="SignIn_Click"></asp:Button>
<span class="user-register" style="margin-left: 5px;">Back to <a href="Login.aspx" class="register-link">Log In</a></span>

</div>
</form>
</body>
</html>  