<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="TaurusCapstone.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
 .jumbotron {
     text-align: center;
 }
</style>

    <div class="jumbotron">
  <h1>Welcome back, <asp:Label ID="userName" runat="server" Text=""></asp:Label>!</h1>
       <p>Quick actions:</p>
<button type="submit" id="addClient" runat="server" class="btn btn-default" onserverclick="addClientButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add a Client</button>
<button type="submit" id="addEmployee" runat="server" class="btn btn-default" onserverclick="addEmployeeButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add an Employee</button>


</div>
</asp:Content>