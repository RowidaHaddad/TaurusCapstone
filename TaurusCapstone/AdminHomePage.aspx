<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="TaurusCapstone.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
 .jumbotron {
     text-align: center;
 }
  .label{
     font-family: 'Trebuchet MS';
     color: black;
     font-size: x-large;
 }
</style>

    <div class="jumbotron">
<asp:Label class= "label" ID="Label1" runat="server" Text="Welcome,"></asp:Label><asp:Label class="label" ID="userName" runat="server" Text=""></asp:Label>
        <asp:Label CssClass="label" ID="Label2" runat="server" Text="!"></asp:Label>
       <p>Quick actions:</p>
<button type="submit" id="addClient" runat="server" class="btn btn-default" onserverclick="addClientButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add a Client</button>
<button type="submit" id="addEmployee" runat="server" class="btn btn-default" onserverclick="addEmployeeButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add an Employee</button>


</div>
</asp:Content>