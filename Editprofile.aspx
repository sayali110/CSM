<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Editprofile.aspx.cs" Inherits="CSM3.Editprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Header Section !-->
<div class="profile-header">
<div class="profile-hero-text-box">
<div class="sections-heading">
<h2><i class="fas fa-user-circle"></i>&nbsp; Edit Profile</h2>
</div>
<div class="profile-form">
<asp:Label ID="Message" runat="server" Text="!! UserName or Password is Incorrect" style="font-size: 17px; color: #e67e22; font-weight: bolder; padding: 5px;" Visible="False"></asp:Label><br />
<asp:RequiredFieldValidator ID="firstNameValidation" runat="server" ErrorMessage="!! First Name must be Required" Font-Bold="True" Display="Static" ControlToValidate="firstName" ForeColor="Red" class="profile-firstName-validation"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="LastNameValidation" runat="server" ErrorMessage="!! Last Name must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="lastName" ForeColor="Red" class="profile-lastName-validation"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">First Name:</span> <asp:TextBox ID="firstName" runat="server" class="register-txtbox profile- txtbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Last Name:</span> <asp:TextBox ID="lastName" runat="server" class="register-txtbox profile-txtbox"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="emailValidation" runat="server" ErrorMessage="!! Email must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="email" ForeColor="Red" class="profile-firstName- validation"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="emailCheck" runat="server" ErrorMessage="!! Invalid Email" Font-Bold="True" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-
.]\w+)*" Display="Dynamic" class="profile-firstName- validation"></asp:RegularExpressionValidator><br />
<span class="txt-txtbox" style="margin-left: 15px;margin-right: 20px;">Email:</span> <asp:TextBox ID="email" runat="server" class="register- txtbox txt-width profile-txtbox"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="usernameValidation" runat="server" ErrorMessage="!! Username must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="username" ForeColor="Red" class="profile-firstName-validation"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">UserName:</span> <asp:TextBox ID="username" runat="server" class="register-txtbox txt-width profile- txtbox"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="passwordValidation" runat="server" ErrorMessage="!! Password must be Required" Font-Bold="True" Display="Static" ControlToValidate="password" ForeColor="Red" class="profile-firstName- validation"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="cpasswordValidation" runat="server" ErrorMessage="!! Confirm Password must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="cpassword" ForeColor="Red" class="profile-lastName-validation"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="MatchingPasswords" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="!! Both passwords should match" ForeColor="Red" Font-Bold="true" Display="Dynamic" class="profile-lastName- validation"></asp:CompareValidator><br />
<span class="txt-txtbox">Password:</span>
<asp:TextBox ID="password" runat="server" class="register-txtbox profile-txtbox"
TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Confirm Password:</span>
<asp:TextBox ID="cpassword" runat="server" class="register-txtbox profile-txtbox"
TextMode="Password"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="mobileValidation" runat="server" ErrorMessage="!! Mobile Number must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="mobile" ForeColor="Red" class="profile- firstName-validation"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="mobileNumberRange" runat="server" ErrorMessage="!! Mobile Number must be 10 digits" Font-Bold="True" Display="Dynamic" ForeColor="Red" class="firstName-validation" ControlToValidate="mobile" ValidationExpression="^[789]\d{9}$"]></asp:RegularExpressionValidator><br />
<span class="txt-txtbox">Mobile Number:</span> <asp:TextBox ID="mobile" runat="server" class="register-txtbox txt-width profile- txtbox"></asp:TextBox><br />
<asp:Button runat="server" class="register-btn" style="margin-left: 300px;" ID="Update" Text="Update"
onclick="Update_Click"></asp:Button>
</div>
</div>
</div>
<!-- Header Section !-->
<asp:TextBox ID="justForHolding" runat="server" Visible="false"></asp:TextBox>
</asp:Content>
