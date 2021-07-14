<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminShowBrands.aspx.cs" Inherits="CSM3.AdminShowBrands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Header Section !-->
<div>
<div class="adminUser-hero-text-box">
<div class="sections-heading">
<h2><i class="fa fa-archive"></i>&nbsp; Brands</h2>
</div>
</div>
</div>
<!-- End of Header Section -->
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
</asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" class="dropdowns" DataSourceID="SqlDataSource2" DataTextField="Brand_name" DataValueField="Brand_name">
</asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" class="login-btn" style="margin: 0 0 0 5px;" />
</div>
<asp:panel ID="updatePanel" runat="server" visible="false">
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="profile-form" style="padding: 0 500px; margin-left:100px;">
<asp:label ID="cautionLabel" runat="server" Visible="false"
text="Brand already exists !!" style="color: #e67e22; font-weight: bolder; margin-left: 90px;"></asp:label><br />
<asp:RequiredFieldValidator ID="firstNameValidation" runat="server" ErrorMessage="!! Brand Name must be Required" Font-Bold="True" Display="Static" ControlToValidate="updateBrandName" ForeColor="Red" class="profile-firstName-validation"></asp:RequiredFieldValidator><br />
<span class="txt-txtbox">Brand Name:</span> <asp:TextBox ID="updateBrandName" runat="server" class="register-txtbox profile-txtbox" Autocomplete="off" style="margin-bottom: 60px; font-size: 14px; color: #000"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb sp;<br />
<asp:label ID="fileUploadLabel" Visible="false" runat="server" text="Please select an image" Font-Bold="True" ForeColor="Red" style="margin- left: 110px"></asp:label><br /><br />
<span class="txt-txtbox">Brand Image:</span>&nbsp;
<asp:CheckBox ID="fileAlreadySelected" runat="server" Text="Keep the previous brand image" font-bold="true" /><br />
<asp:FileUpload ID="FileUpload1" runat="server" style="font-size: 14px; margin-left: 5px; margin-right: 2px;" />
<br /><br />
<asp:Button runat="server" class="register-btn" style="margin-left: 100px; margin-top: 50px" ID="Update" Text="Submit" onclick="Update_Click">
</asp:Button>
</div>
</asp:panel>
<p>
&nbsp;
</p>
<p>
 &nbsp;
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None"
BorderWidth="1px"
CellPadding="4" style="margin-left: 25%; margin-top: 50px;"
DataSourceID="SqlDataSource1" Height="271px" Width="785px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Brand_id">
    <Columns>
        <asp:BoundField DataField="Brand_id" HeaderText="Brand_id" ReadOnly="True" SortExpression="Brand_id" />
        <asp:BoundField DataField="Brand_name" HeaderText="Brand_name" SortExpression="Brand_name" />
        <asp:BoundField DataField="Brand_Image" HeaderText="Brand_Image" SortExpression="Brand_Image" />
        <asp:TemplateField HeaderText="Brand_Image" SortExpression="Brand_Image">
            <EditItemTemplate> <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Brand_Image") %>'></asp:TextBox>
</EditItemTemplate>
<ItemTemplate>
<asp:Image ID="Image1" runat="server" Height="226px" ImageUrl='<%# Eval("Brand_Image") %>' Width="342px" style="padding-left: 90px;"/>
</ItemTemplate>
</asp:TemplateField>
    </Columns>
<FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"
/>
<PagerStyle BackColor="#FFFFCC" ForeColor="#330099"
HorizontalAlign="Center" />
<RowStyle BackColor="White" ForeColor="#330099" />
<SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
<SortedAscendingCellStyle BackColor="#FEFCEB" />
<SortedAscendingHeaderStyle BackColor="#AF0101" />
<SortedDescendingCellStyle BackColor="#F6F0C0" />
<SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Brands]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Brand_name] FROM [Brands]"></asp:SqlDataSource>
</asp:Content>
