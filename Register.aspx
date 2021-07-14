<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CSM3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class="register-body">
    <form id="form1" runat="server">
        <div class="register-form">
<h1>Get register to drive</h1>
<asp:Label ID="Message" runat="server" Text="!! User Already Exists" style="font-size: 17px; color: #e67e22; font-weight: bolder; padding: 5px;" Visible="False"></asp:Label><br />
<asp:RequiredFieldValidator ID="firstNameValidation" runat="server" ErrorMessage="!! First Name must be Required" Font-Bold="True" Display="Static" ControlToValidate="firstName" ForeColor="Red" class="firstName-validation"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="LastNameValidation" runat="server" ErrorMessage="!! Last Name must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="lastName" ForeColor="Red" class="lastName-validation"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="firstName" runat="server" class="register-txtbox" placeholder="First Name" AutoComplete="off"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="lastName" runat="server" class="register-txtbox" placeholder="Last Name" AutoComplete="off"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="emailValidation" runat="server" ErrorMessage="!! Email must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="email" ForeColor="Red" class="firstName- validation"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="emailCheck" runat="server" ErrorMessage="!! Invalid Email" Font-Bold="True" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-
.]\w+)*" Display="Dynamic" class="firstName- validation"></asp:RegularExpressionValidator><br />
<asp:TextBox ID="email" runat="server" class="register-txtbox txt- width" placeholder="Email" AutoComplete="off"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="usernameValidation" runat="server" ErrorMessage="!! Username must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="username" ForeColor="Red" class="firstName-validation"></asp:RequiredFieldValidator><br />
<asp:TextBox ID="username" runat="server" class="register-txtbox txt- width" placeholder="Username" AutoComplete="off"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="passwordValidation" runat="server" ErrorMessage="!! Password must be Required" Font-Bold="True" Display="Static" ControlToValidate="password" ForeColor="Red" class="firstName- validation"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="cpasswordValidation" runat="server" ErrorMessage="!! Confirm Password must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="cpassword" ForeColor="Red" class="lastName-validation"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="MatchingPasswords" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="!! Both passwords should match" ForeColor="Red" Font-Bold="true" Display="Dynamic" class="lastName-validation"></asp:CompareValidator><br />
<asp:TextBox ID="password" runat="server" class="register-txtbox " placeholder="Password"
TextMode="Password" AutoComplete="off"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="cpassword" runat="server" class="register-txtbox" placeholder="Confirm Password" TextMode="Password"
AutoComplete="off"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="mobileValidation" runat="server" ErrorMessage="!! Mobile Number must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="mobile" ForeColor="Red" class="firstName-validation"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="NumberDataType" runat="server" ErrorMessage="!! It must be in Numbers" Font-Bold="true" ControlToValidate="mobile"
Display="Dynamic" ForeColor="Red" class="firstName-validation" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
<br />
<asp:TextBox ID="mobile" runat="server" class="register-txtbox txt- width" placeholder="Mobile Number" AutoComplete="off"></asp:TextBox><br />
<asp:Button runat="server" class="register-btn" ID="SignUp" Text="sign up">
</asp:Button>&nbsp;&nbsp;&nbsp;<span class="user- register">Already have an Account ? <a href="Login.aspx" class="register- link">Log In</a></span>
</div>
</form>
</body>
</html>