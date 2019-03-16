<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewEmployees.aspx.cs" Inherits="TaurusCapstone.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <ul class="nav nav-tabs">
  <li><a href="~/AdminViewEmployees.aspx" data-toggle="tab" runat="server">View Employees</a></li>
  <li><a href="~/AdminAddEmployee.aspx" data-toggle="tab" runat="server">Add Employees</a></li>
</ul>
    <div class="tab-pane fade active in" id="viewEmployees">
  </div>
    <div class="tab-pane fade active in" id="addEmployee"> 
  </div>

    <div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>


