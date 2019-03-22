<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="TaurusCapstone.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
       .panel-body{
           color: #990000;
           font-family: Avenir LT Std 45 Book;
       }
       .auto-style4 {
           width: 133px
       }
       .panel panel-default{
           width: 120px;
       }
       .panel-heading{
           font-family: Avenir LT Std 45 Book;
           color: maroon;
       }
       .btn btn-link{
           text-align:right;
           float: right;
       }
       .label{
           color: black;
           font-size: small;
       }
   </style>
    <div class="well">
<div class="panel panel-default">
  <div class="panel-heading"><strong>Personal Information <a href="~/AdminEditProfile.aspx" class="btn btn-link">Edit</a></strong></div>
  <div class="panel-body">
    Username:
    <asp:Label class="label" ID="usernameLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body">
    Email:
        <asp:Label class="label" ID="emailLabel" runat="server" Text=""></asp:Label>

  </div>

    <div class="panel-body">
    Phone number:
            <asp:Label class="label" ID="numberLabel" runat="server" Text=""></asp:Label>

  </div>

</div>
        
    </div>
</asp:Content>
