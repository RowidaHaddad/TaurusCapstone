<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminClients.aspx.cs" Inherits="TaurusCapstone.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <ul class="nav nav-tabs">
  <li><a href="~/AdminViewClients.aspx" data-toggle="tab" runat="server">View Client</a></li>
  <li><a href="~/AdminAddClient.aspx" data-toggle="tab" runat="server">Add Clients</a></li>
</ul>
    <div class="tab-pane fade active in" id="viewEmployees">
  </div>
    <div class="tab-pane fade active in" id="addEmployee"> 
  </div>
</asp:Content>
