<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEmployees.aspx.cs" Inherits="TaurusCapstone.WebForm10" %>
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
  <li><a href="~/AdminViewEmployees.aspx" data-toggle="tab" runat="server">View Employees</a></li>
  <li><a href="~/AdminAddEmployee.aspx" data-toggle="tab" runat="server">Add Employees</a></li>
</ul>
    <div class="tab-pane fade active in" id="viewEmployees">
  </div>
    <div class="tab-pane fade active in" id="addEmployee"> 
  </div>

    <div class="well well-lg">

    </div>
</asp:Content>
