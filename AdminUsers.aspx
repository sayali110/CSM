<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="CSM3.AdminUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Header Section !-->
<div>
<div class="adminUser-hero-text-box">
<div class="sections-heading">
<h2><i class="fa fa-archive"></i>&nbsp; Users</h2>
</div>
</div>
</div>
<!-- End of Header Section !-->
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
<div class="dropdownOperations">
<asp:DropDownList ID="DropDownList1" runat="server" class="dropdowns">
<asp:ListItem>Delete</asp:ListItem>
<asp:ListItem>Change Status</asp:ListItem>
</asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" class="dropdowns">
</asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" class="login-btn" style="margin: 0 0 0 5px;" />
</div>
<p>
    &nbsp;
    </p>
<p>
 &nbsp;</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
BorderWidth="1px"
CellPadding="3" DataSourceID="SqlDataSource1" style="margin-left: 210px;" ForeColor="Black"
GridLines="Vertical" Height="251px" Width="1409px" onselectedindexchanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle BackColor="#CCCCCC" />
<Columns>
<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
<asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
<asp:BoundField DataField="User_Status" HeaderText="User_Status"
SortExpression="User_Status" />
<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
</Columns>
<FooterStyle BackColor="#CCCCCC" />
<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
<SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F1F1F1" />
<SortedAscendingHeaderStyle BackColor="#808080" />
<SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\CarShowroomManagement.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [FirstName], [LastName], [Email], [UserName], [MobileNumber], [User_Status], [Password] FROM [Users]"></asp:SqlDataSource>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</asp:Content>
