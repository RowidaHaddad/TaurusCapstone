<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientProfile.aspx.cs" Inherits="TaurusCapstone.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
       .auto-style4 {
           width: 133px
       }
       .panel panel-default{
           width: 120px;
       }
       .panel-heading{
           font-family: Avenir LT Std 45 Book;
       }
   </style>
    <div class="well">
<div class="panel panel-default">
  <div class="panel-heading"><strong>Personal Information </strong></div>
  <div class="panel-body" runat="server">
    Username: <asp:Label ID="usernameLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Email: <asp:TextBox ID="usernameTB" runat="server" ReadOnly="True"></asp:TextBox>
  </div>
    <div class="panel-body" runat="server">
    Phone number: <asp:Label ID="numberLabel" runat="server" Text=""></asp:Label>
  </div>
</div>
        
    <div class="panel panel-default" runat="server">
  <div class="panel-heading"><strong>Related Projects</strong></div>
  <div class="panel-body">
    <div class="list-group">
  <a href="~/ClientPendigProjects.aspx" runat="server" class="list-group-item">
    <h4 class="list-group-item-heading"runat="server">On-going Projects
    </h4>
    <p class="list-group-item-text">The status of these projects is on-going and yet to be delivered upon completion</p>
  </a>
  <a href="~/ClientCompletedProjects.aspx" runat="server" class="list-group-item">
    <h4 class="list-group-item-heading">Completed Projects</h4>
    <p class="list-group-item-text">The status of these projects is completed and has be handed-over.</p>
  </a>
</div>
  </div>
</div>

    </div>
</asp:Content>
