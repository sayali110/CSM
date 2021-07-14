<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="CSM3.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <!-- Header Section !-->
<div>
<div class="adminDashboard-hero-text-box" style="top: 20%;width: 55%;">
<div class="sections-heading" style="margin-top: 0;">
<h2><i class="fa fa-archive"></i>&nbsp; Welcome to Admin DashBoard</h2>
</div>
</div>
</div>
<!-- No of User, Brands, and Car Cards !-->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br
/><br /><br /><br /><br />
<div class="inline-cards">
<div class="cards-stats" style="border: 1px solid #0275d8;">
<div class="card-top-part" style="background-color: #0275d8;">
<i class="fa fa-user fa-3x" style="color: #fff;"></i>
<asp:Label ID="UsersCount" runat="server" class="totalCount"></asp:Label><br />
<asp:Label ID="Label1" runat="server" Text="Users" class="cardNames"></asp:Label>
</div>
<div class="card-bottom-part">
<a href="AdminUsers.aspx" class="cardsLink" style="color: #0275d8;">View Details<span style="float: right;"><i class="fas fa-arrow-alt- circle-right" style="font-size:20px; color: #0275d8;"></i></span></a>
</div>
</div>
<div class="cards-stats" style="border: 1px solid #d9534f;">
<div class="card-top-part" style="background-color: #d9534f;">
<i class="fab fa-hotjar fa-3x" style="color: #fff;"></i>
<asp:Label ID="BrandsCount" runat="server" Text="0" class="totalCount"></asp:Label><br />
<asp:Label ID="Label2" runat="server" Text="Brands" class="cardNames"></asp:Label>
</div>
<div class="card-bottom-part">
<a href="AdminShowBrands.aspx" class="cardsLink" style="color: #d9534f;">View Details<span style="float: right;"><i class="fas fa-arrow-alt- circle-right" style="font-size:20px; color: #d9534f;"></i></span></a>
</div>
</div>
<div class="cards-stats" style="border: 1px solid #5cb85c;">
<div class="card-top-part" style="background-color: #5cb85c;">
<i class="fas fa-car fa-3x" style="color: #fff"></i>
<asp:Label ID="CarsCount" runat="server" Text="0" class="totalCount"></asp:Label><br />
<asp:Label ID="Label3" runat="server" Text="Cars" class="cardNames"></asp:Label>
</div>
<div class="card-bottom-part">
<a href="AdminShowCars.aspx" class="cardsLink" style="color: #5cb85c;">View Details<span style="float: right;"><i class="fas fa-arrow-alt- circle-right" style="font-size:20px; color: #5cb85c;"></i></span></a>
</div>
</div>
<div class="cards-stats" style="border: 1px solid #5cb85c;">
<div class="card-top-part" style="background-color: orange;">
<i class="fas fa-file fa-3x" style="color:#fff"></i>
<asp:Label ID="CarCompare" runat="server" class="totalCount"></asp:Label><br />
<asp:Label ID="Label5" runat="server" Text="Compare" class="cardNames"></asp:Label>
</div>
<div class="card-bottom-part">
<a href="" class="cardsLink" style="color: orange;">View Details<span style="float: right;"><i class="fas fa-arrow-alt- circle-right" style="font-size:20px; color: #5cb85c;"></i></span></a>
</div>
</div>
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br />
<!-- End of Header Section !-->
</asp:Content>
