<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="CSM3.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Header Section !-->
<div class="profile-header" style="color:#eee; background-attachment: fixed">
<div class="profile-hero-text-box" style="top:50%">
<div class="sections-heading" style="margin-top: 20px;">
<h2><i class="fas fa-user-circle"></i>&nbsp; Add Car</h2>
</div>
<div class="profile-form">
<asp:RequiredFieldValidator ID="CarNameValidation" runat="server" ErrorMessage="!! Car Name must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="CarName" ForeColor="Red" class="lastName-validation" style="margin-left: 400px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Brand Name:</span>&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
DataTextField="Brand_name" DataValueField="Brand_name" class="dropdowns"></asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Car Name:</span> <asp:TextBox ID="CarName" runat="server" class="register-txtbox profile-txtbox"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="BodyTypeValidation" runat="server" ErrorMessage="!! Body Type must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="BodyType" ForeColor="Red" class="lastName-validation" style="margin-left: 460px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Car Image:</span>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" style="font-size: 14px; margin-left: 5px;" />
&nbsp;&nbsp;
<span class="txt-txtbox">Body Type:</span> <asp:TextBox ID="BodyType" runat="server" class="register-txtbox profile-txtbox"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="BodyColorValidation" runat="server" ErrorMessage="!! Body Color must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="BodyColor" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Body Color:</span> <asp:TextBox ID="BodyColor" runat="server" class="register-txtbox profile-txtbox" style="width: 200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Transmission Type:</span>&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" class="dropdowns">
<asp:ListItem Selected="True">Automatic</asp:ListItem><asp:ListItem>Manual</asp:ListItem>
</asp:DropDownList><br />
<asp:RequiredFieldValidator ID="CarPriceValidation" runat="server" ErrorMessage="!! Car Price must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="CarPrice" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Car Price:</span> <asp:TextBox ID="CarPrice" runat="server" class="register-txtbox profile-txtbox"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Fuel Type:</span>&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList3" runat="server" class="dropdowns">
<asp:ListItem Selected="True">Petrol</asp:ListItem>
<asp:ListItem>Diesel</asp:ListItem>
<asp:ListItem>Gas</asp:ListItem>
<asp:ListItem>Battery</asp:ListItem>
</asp:DropDownList><br />
<asp:RequiredFieldValidator ID="MaxPowerValidation" runat="server" ErrorMessage="!! Max Power must be Required" Font-Bold="True" ControlToValidate="MaxPower" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="MileageValidation" runat="server" ErrorMessage="!! Mileage must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="Mileage" ForeColor="Red" class="lastName-validation" style="margin-left: 130px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Max Power:</span> <asp:TextBox ID="MaxPower" runat="server" class="register-txtbox profile-txtbox" style="width: 200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Mileage:</span> <asp:TextBox ID="Mileage" runat="server" class="register-txtbox profile-txtbox" style="width: 200px"></asp:TextBox><br />
<asp:Button runat="server" class="register-btn" style="margin-left: 300px;" ID="Add" Text="Add"
onclick="Add_Click"></asp:Button>
</div>
</div>
</div>
<!-- Header Section !-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Brand_name] FROM [Brands]"></asp:SqlDataSource>
</asp:Content>
