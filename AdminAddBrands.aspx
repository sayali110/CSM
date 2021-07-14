<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminAddBrands.aspx.cs" Inherits="CSM3.AdminAddBrands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Header Section !-->
<div class="profile-header">
<div class="profile-hero-text-box" style="top:35%">
<div class="sections-heading">
<h2><i class="fas fa-user-circle"></i>&nbsp; Add Brand</h2>
</div>
<div class="profile-form" style="padding: 0 500px;">
<asp:label ID="cautionLabel" runat="server" Visible="false" text="Brand already exists !!" style="color: #e67e22; font-weight: bolder; margin-left: 90px;"></asp:label><br />
<asp:RequiredFieldValidator ID="firstNameValidation" runat="server" ErrorMessage="!! Brand Name must be Required" Font-Bold="True" Display="Static" ControlToValidate="firstName" ForeColor="Red" class="profile-firstName-validation"></asp:RequiredFieldValidator><br /><br/>
<span class="txt-txtbox">Brand Name:</span> <asp:TextBox ID="firstName" runat="server" class="register-txtbox profile-txtbox" Autocomplete="off" style="margin-bottom: 60px; font-size: 14px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
<asp:label ID="fileUploadLabel" Visible="false" runat="server" text="Label" Font-Bold="True" ForeColor="Red" style="margin-left: 110px"></asp:label><br /><br />
<span class="txt-txtbox">Brand Image:</span>&nbsp;
<asp:FileUpload ID="FileUpload1" runat="server" style="font-size: 14px; margin-left: 5px;margin-right: 2px;" /><br /><br />
<asp:Button runat="server" class="register-btn" style="margin-left: 100px; margin-top: 50px" ID="Update" Text="Submit" onclick="Update_Click">
</asp:Button>
</div>
</div>
</div>
<!-- Header Section !-->  
</asp:Content>
