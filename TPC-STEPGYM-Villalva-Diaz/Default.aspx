<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_STEPGYM_Villalva_Diaz._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://image.winudf.com/v2/image/Y29tLkRyZWFtV2FsbHBhcGVycy5HeW0wMV9zY3JlZW5fM193czFzZHc4Yw/screen-3.jpg?fakeurl=1&type=.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://bensmann.no/wp-content/uploads/2018/10/victor-freitas-572863-unsplash-1024x683.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://trumpwallpapers.com/wp-content/uploads/Workout-Wallpaper-16-1920-x-1080.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</asp:Content>
