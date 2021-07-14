<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="CSM3.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Header Section !-->
<div class="header">
<div class="hero-text-box">
<h1>" She's not just <br /><span style="color: green; font-weight: bolder; font-size: 65px; text-shadow: 3px 3px 2px rgb(48, 41, 41);"> FOUR WHEELS </span><br />and <span style="color: orange; font-weight: bolder;font-size: 65px; text-shadow: 3px 3px 2px rgb(48, 41, 41);"> ENGINE </span>,<br/>
She's <span style="color: red; font-weight: bolder;font-size: 60px; text-shadow: 3px 3px 2px rgb(48, 41, 41);"> HOME </span>"</h1>
<!-- <a class="btn btn-full" href="#">SIGN UP</a> !-->
</div>
<img src="img/header-img-1.png" class="header-img" alt="header image 1"
/>
<img src="img/header-img-2.png" class="header-img" alt="header image 2"
style="margin-right: -183px;" />
<img src="img/header_car.png" class="header-img" alt="header image 3" style="margin-top: -45px; margin-right: 155px" />
</div>
<!-- End of Header Section !-->
<!-- Services Section !-->
<div class="section-services">
<div class="sections-heading">
<h2 class="heading"><i class="fas fa-coffee" style="display: inline-block;"></i> Services</h2>
</div>
<div class="all-services">
<div class="four-services">
<i class="fas fa-cogs fa-3x" style="color: #d9534f"></i>
<h2>Creativity</h2>
<p>We always come up with all the latest car trends going around in the market with all its corresponding specifications. Moreover, we have multiple brands and cars respectively.</p>
</div>
<div class="four-services">
<i class="far fa-thumbs-up fa-3x" style="color: #0275d8"></i>
<h2>Quality</h2>
<p>We know you're always busy. No time for searching. We're coming up with all the amazing So let us take care of that, we're really good at it, we promise!</p>
</div>
<div class="four-services">
<i class="far fa-handshake fa-3x" style="color: #e67e22"></i>
<h2>Experience</h2>
<p>There's nothing amazing than the Customer Experience we provide for you guys by showing you what you really want to know. So don't worry about that.</p>
</div>
<div class="four-services">
<i class="fas fa-key fa-3x" style="color: #5cb85c"></i>
<h2>100% Security</h2>
<p>We know you're always busy. No time for searching. We're coming up with all the amazing So let us take care of that, we're really good at it, we promise!</p>
</div>
</div>
<br /><br /><br />
</div>
<!-- End of Services Section !-->
<!-- Car Gallery Section -->
<div class="section-gallery">
<div class="sections-heading">
<h2 class="heading" style="margin: 30px 0; color: White"><i class="fab fa-studiovinari fa-2x"></i>&nbsp; Glance of our Magic</h2>
</div>
<ul class="gallery-showcase">
<li>
<div class="meals-photo">
<img src="img/1.jpg" alt="Italian Pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/2.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/3.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/4.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/5.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/6.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/7.jpg" alt="Italian pizza" />
</div>
</li>
<li>
<div class="meals-photo">
<img src="img/8.jpg" alt="Italian pizza" />
</div>
</li>
</ul>
</div>
<!-- End of Car Gallery Section !-->
</asp:Content>
