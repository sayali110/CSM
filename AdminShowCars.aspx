<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminShowCars.aspx.cs" Inherits="CSM3.AdminShowCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<!-- Header Section !-->
<div>
<div class="adminUser-hero-text-box">
<div class="sections-heading">
<h2><i class="fa fa-archive"></i>&nbsp; Cars</h2>
</div>
</div>
</div>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<!-- Dropdown for deleting any Brands -->
<div class="dropdownOperations">
<asp:DropDownList ID="DropDownList1" runat="server" class="dropdowns">
<asp:ListItem>Delete</asp:ListItem>
<asp:ListItem>Update</asp:ListItem>
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" class="dropdowns" DataSourceID="SqlDataSource2" DataTextField="Car_Name"
DataValueField="Car_Name">
</asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" class="login-btn" style="margin: 0 0 0 5px;" />
</div>
<asp:panel ID="updatePanel" runat="server" visible="false">
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="profile-form">
<asp:Label ID="carInsertCheck" runat="server" Text="" Visible="false" Font-Bold="True" style="color:#e63" class="firstName-validation"></asp:Label><br />
<asp:RequiredFieldValidator ID="CarNameValidation" runat="server" ErrorMessage="!! Car Name must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="CarName" ForeColor="Red" class="lastName-validation" style="margin-left: 400px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Brand Name:</span>&nbsp;&nbsp;<asp:DropDownList ID="UpdateDropDownList" runat="server" DataSourceID="SqlDataSource5"
DataTextField="Brand_name" DataValueField="Brand_name" class="dropdowns"></asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Car Name:</span> <asp:TextBox ID="CarName" runat="server" class="register-txtbox profile-txtbox" style="color: #000;"></asp:TextBox><br />
<asp:CheckBox ID="fileAlreadySelected" runat="server" Text="Keep the previous brand image" font-bold="true" oncheckedchanged="fileAlreadySelected_CheckedChanged1" />
<asp:Label ID="FileUploadLabel" runat="server" Text="!! Select a file" Visible="false" Font-Bold="True" ForeColor="Red" class="firstName-validation" font></asp:Label>
<asp:RequiredFieldValidator ID="BodyTypeValidation" runat="server" ErrorMessage="!! Body Type must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="BodyType" ForeColor="Red" class="lastName-validation" style="margin-left: 340px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Car Image:</span>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" style="font-size: 14px; margin-left: 5px;" />
&nbsp;&nbsp;
<span class="txt-txtbox">Body Type:</span> <asp:TextBox ID="BodyType" runat="server" class="register-txtbox profile-txtbox" style="color: #000;"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="BodyColorValidation" runat="server" ErrorMessage="!! Body Color must be Required" Font-Bold="True" Display="Dynamic"
ControlToValidate="BodyColor" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Body Color:</span> <asp:TextBox ID="BodyColor" runat="server" class="register-txtbox profile-txtbox" style="width: 200px;color: #000;"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Transmission Type:</span>&nbsp;&nbsp;
<asp:DropDownList ID="TransmissionType" runat="server" class="dropdowns">
<asp:ListItem Selected="True">Automatic</asp:ListItem><asp:ListItem>Manual</asp:ListItem>
</asp:DropDownList><br />
<asp:RegularExpressionValidator ID="NumberValidation" runat="server" ErrorMessage="!! Car Price must be in Numbers" Font-Bold="True" Display="Dynamic" ForeColor="Red" class="firstName-validation" ControlToValidate="CarPrice" ValidationExpression="\d+"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="CarPriceValidation" runat="server" ErrorMessage="!! Car Price must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="CarPrice" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Car Price:</span> <asp:TextBox ID="CarPrice" runat="server" class="register-txtbox profile-txtbox" style="color: #000;"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Fuel Type:</span>&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList3" runat="server" class="dropdowns">
<asp:ListItem Selected="True">Petrol</asp:ListItem>
<asp:ListItem>Diesel</asp:ListItem>
<asp:ListItem>Gas</asp:ListItem>
<asp:ListItem>Battery</asp:ListItem>
</asp:DropDownList><br />
<asp:RequiredFieldValidator ID="MaxPowerValidation" runat="server" ErrorMessage="!! Max Power must be Required" Font-Bold="True" ControlToValidate="MaxPower" ForeColor="Red" class="firstName-validation" style="margin-left: 100px;"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="MileageValidation" runat="server" ErrorMessage="!! Mileage must be Required" Font-Bold="True" Display="Dynamic" ControlToValidate="Mileage" ForeColor="Red" class="lastName-validation" style="margin-left: 130px;"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Max Power:</span> <asp:TextBox ID="MaxPower" runat="server" class="register-txtbox profile-txtbox" style="width: 200px;color: #000;"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span class="txt-txtbox">Mileage:</span> <asp:TextBox ID="Mileage" runat="server" class="register-txtbox profile-txtbox" style="width: 200px;color: #000;"></asp:TextBox><br />
<asp:Button runat="server" class="register-btn" style="margin-left: 300px;" ID="Add" Text="Submit" onclick="Add_Click"></asp:Button>
</div>
</asp:panel>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
CellPadding="4"
style="margin-left: 15%; margin-top: 50px;" DataSourceID="SqlDataSource3"
Height="271px" Width="785px" DataKeyNames="Car_Id">
    <Columns>
        <asp:BoundField DataField="Car_Id" HeaderText="Car_Id" InsertVisible="False" ReadOnly="True" SortExpression="Car_Id" />
        <asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
        <asp:BoundField DataField="Car_Name" HeaderText="Car_Name" SortExpression="Car_Name" />
        <asp:BoundField DataField="Car_Image" HeaderText="Car_Image" SortExpression="Car_Image" />
        <asp:BoundField DataField="Body_Type" HeaderText="Body_Type" SortExpression="Body_Type" />
        <asp:BoundField DataField="Body_Color" HeaderText="Body_Color" SortExpression="Body_Color" />
        <asp:BoundField DataField="Transmission_Type" HeaderText="Transmission_Type" SortExpression="Transmission_Type" />
        <asp:BoundField DataField="Car_Price" HeaderText="Car_Price" SortExpression="Car_Price" />
        <asp:BoundField DataField="Fuel_Type" HeaderText="Fuel_Type" SortExpression="Fuel_Type" />
        <asp:BoundField DataField="Max_Power" HeaderText="Max_Power" SortExpression="Max_Power" />
        <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
    </Columns>
<FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
<PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
<RowStyle BackColor="White" ForeColor="#330099" />
<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
<SortedAscendingCellStyle BackColor="#FEFCEB" />
<SortedAscendingHeaderStyle BackColor="#AF0101" />
<SortedDescendingCellStyle BackColor="#F6F0C0" />
<SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT [Car_Name] FROM [Cars]" onselecting="SqlDataSource2_Selecting" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
<p>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT Cars.Car_Id, Brands.Brand_name, Cars.Car_Name, Cars.Car_Image, Cars.Body_Type, Cars.Body_Color, Cars.Transmission_Type, Cars.Car_Price, Cars.Fuel_Type, Cars.Max_Power, Cars.Mileage FROM Brands INNER JOIN Cars ON Brands.Brand_id = Cars.Brand_Id" ProviderName="System.Data.SqlClient">
</asp:SqlDataSource> <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT [Brand_name] FROM [Brands]" onselecting="SqlDataSource2_Selecting" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
</p>
<p>
&nbsp;</p>
<p>
&nbsp;</p>
<!-- End of Header Section !-->
</asp:Content>
