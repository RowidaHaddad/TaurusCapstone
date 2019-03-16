<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="TaurusCapstone.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <style>
       .well{
           
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
   </style>
    <div class="well">
<div class="panel panel-default">
  <div class="panel-heading"><strong>Personal Information </strong></div>
  <div class="panel-body">
    Username:
  </div>
    <asp:Label ID="usernameLabel" runat="server" Text=""></asp:Label>
    <div class="panel-body">
    Email:
  </div>
    <div class="panel-body">
    Phone number:
  </div>
</div>
        
    </div>
</asp:Content>
