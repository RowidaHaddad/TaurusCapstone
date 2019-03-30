<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOProjects.aspx.cs" Inherits="TaurusCapstone.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
    .col-md-5{
        float: left;
        display:block;
        font-family:Avenir LT Std 45 Book;
    }
</style>
    <ul class="nav nav-tabs">
  <li><a href="~/DOViewProjects.aspx" data-toggle="tab" runat="server">View projects</a></li>
  <li><a href="~/DOCreateAProject.aspx" data-toggle="tab" runat="server">New Project</a></li>
  <li><a href="~/DOViewCP.aspx" data-toggle="tab" runat="server">View Cost Proposals</a></li>
  <li><a href="~/DOCreateACostProposal.aspx" data-toggle="tab" runat="server">New Cost Proposal</a></li>

</ul>
    <div class="tab-pane fade active in" id="viewEmployees">
  </div>
    <div class="tab-pane fade active in" id="addEmployee"> 
  </div>

    <div class="well well-lg">

    </div>
</asp:Content>
